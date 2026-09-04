---
name: acumatica-integration-diagnostics
description: Modernize, repair, and validate old Acumatica ERP integration solutions across REST, contract-based REST API clients, SOAP, OData, middleware jobs, console runners, and diagnostic utilities. Use when updating Acumatica endpoint versions, generated client packages and namespaces, authentication to OAuth 2.0, request payloads, filters, actions, test-instance configuration, run outputs, or migration plans for legacy Acumatica integrations.
metadata:
  version: 1.0.1
---

# Acumatica Integration Modernization

## Purpose

Use this skill to modernize and troubleshoot old Acumatica ERP integration solutions, not just one diagnostics runner. Apply it to C# solutions using Acumatica RESTClient packages, generated contract-based endpoint clients, custom HTTP REST clients, SOAP/OData integrations, scheduled jobs, middleware connectors, and small console validation tools.

The goal is to discover the integration shape, identify version and endpoint drift, update authentication and client contracts, run or simulate the integration safely, and report concrete fixes with source references.

## First Pass

1. Inspect the repository before editing. Start with `rg --files`; then read solution/project files, package files, app settings, auth/session code, API client wrappers, model/generated-client references, scenario/job/connector entry points, and tests or output folders.
2. Identify the integration type:
   - Acumatica RESTClient with generated endpoint package, such as `Acumatica.Default_*`
   - custom REST calls to `/entity/{endpoint}/{version}` or `/identity/connect/*`
   - SOAP screen-based API or contract-based SOAP
   - OData consumers
   - middleware or scheduled synchronization job
   - diagnostic or smoke-test runner
3. Identify source and target Acumatica versions. Prefer user-provided release notes, endpoint comparison files, customization exports, OpenAPI/endpoint metadata, or official docs. Do not guess version-specific endpoint changes from memory.
4. Find configuration and secrets handling. Look for base URL, tenant/company, branch, locale, username/password login, OAuth client ID/secret, refresh tokens, endpoint names, and endpoint versions.
5. Check any previous logs or output files only as evidence from old runs. Do not treat generated output as source.

## Trusted Sources

Check trusted sources before making version-sensitive changes. Prefer sources in this order:

- User-provided release notes, endpoint comparison files, OAuth flow docs, customization exports, OpenAPI schemas, and captured run outputs from the current task.
- Acumatica documentation in the `Acumatica-AI-Resources/Documentation/` directory. Search it before using external sources:
  - For endpoint contract changes, search `Documentation/IntegrationDevelopmentGuide/` for `Comparison of System Endpoints`, then narrow by the source and target endpoint versions and affected entity, field, or action. A useful starting command is `rg -n "Comparison of System Endpoints|Comparing the Default/" Documentation/IntegrationDevelopmentGuide`.
  - For OAuth 2.0 and OIDC behavior, search `Documentation/IntegrationDevelopmentGuide/` for `Authorizing Client Applications to Work with Acumatica ERP`, the selected authorization flow, connected-application registration, scopes, token refresh, and data access. A useful starting command is `rg -n "Authorizing Client Applications|Authorization Code Flow|refresh token|offline_access" Documentation/IntegrationDevelopmentGuide`.
  - If `Documentation/` is absent, because the working directory is not a clone of this repository or is a partial checkout, those searches return nothing, which reads the same as the guidance not existing. Do not fall back to recalled endpoint behavior. Read the same topics from the release branch instead: browse `https://github.com/Acumatica/Acumatica-AI-Resources/tree/2026R1/Documentation`, and fetch one topic as `https://raw.githubusercontent.com/Acumatica/Acumatica-AI-Resources/2026R1/Documentation/{topic path}`. If network access is unavailable, name the topic you could not read rather than answering from memory.
- Target-version Acumatica release notes supplied by the user. If release-note details are needed and no current release notes are attached or available under `Documentation/ReleaseNotes/`, ask the user to provide them.
- Metadata from the target Acumatica instance, such as endpoint definitions, connected application settings, and actual response bodies.
- Installed package metadata and generated client code in the repository or NuGet cache.
- Official Acumatica documentation or release notes when the repository documentation is missing, stale, or the user asks for the latest/current behavior.

Treat source facts as scoped to their version, tenant, and endpoint. If sources conflict, report the conflict and prefer user-provided current-task sources and target-instance behavior for runtime fixes. Do not carry dataset-specific IDs, credentials, endpoint versions, or scenario assumptions from another project unless current sources confirm them.

## Version and Endpoint Upgrade Workflow

When updating an old integration to a newer Acumatica version:

- Update package references together when using generated clients: generated endpoint package, `Acumatica.RESTClient`, and `Acumatica.RESTClient.ContractBasedApi`.
- Update generated model namespaces consistently. Generated endpoint packages commonly use package names with dots and namespaces with underscores.
- For custom REST clients, update endpoint URLs, entity names, action names, filter syntax, payload fields, and expansion/select parameters according to endpoint comparison data.
- Prefer structured models or serializers over ad hoc string manipulation for request and response payloads.
- Keep edits scoped to the integration boundary: client wrappers, auth/session code, DTO/model mappings, request builders, and affected workflow steps.
- Build after package/namespace changes before scenario-level repairs. Let compiler errors reveal renamed or removed models first.

## Authentication Modernization

Prefer OAuth 2.0 for modern Acumatica integrations.

- Replace obsolete username/password session login such as `/entity/auth/login` or RESTClient `LoginAsync` when the user asks for modern authentication.
- For unattended or server-side integrations, prefer Authorization Code with refresh-token reuse when an initial interactive consent is acceptable. Use `api offline_access` scopes for REST access and refresh tokens.
- If the integration cannot support an interactive bootstrap, document the tradeoff before choosing Resource Owner Password Credentials. It still handles user credentials and is usually a transitional option.
- The Acumatica OAuth client ID includes the tenant suffix, for example a generated ID followed by `@TenantName`; avoid also passing a separate login tenant unless the selected API explicitly requires it.
- The redirect URI must exactly match the Connected Application registration.
- With the Acumatica RESTClient library, use `ReceiveAccessTokenAuthCodeAsync` for Authorization Code exchange and `RefreshAccessTokenAsync` for refresh-token reuse when available.
- Do not reuse a generated client's cookie-session logout helper to end a bearer-token session. Dispose HTTP/API clients normally.
- Whether to sign out at all is scope-dependent, and `POST /entity/auth/logout` (with `Content-Length: 0`) releases the session immediately. It is required for cookie-based sign-in and for the `api:concurrent_access` scope, recommended for `api`-only OAuth because an unclosed session holds an API-user slot until the access token expires in an hour, and not required for `api` and `offline_access`, where Acumatica reuses a single session for each granted access. Confirm the current behavior in `Documentation/IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_SignOut.md`.
- Mask `password`, `client_secret`, authorization codes, access tokens, refresh tokens, ID tokens, and bearer authorization headers in logs and diagnostic files.

## Request and Scenario Repair Patterns

Use endpoint comparison data and actual error responses to drive repairs. Common modernization fixes include:

- Change filters to the syntax expected by the target endpoint, especially DateTime and DateTimeOffset literals.
- Send minimal key or ID objects to workflow actions when expanded detail lines cause validation or stale-state errors.
- Move fields to their new owning object when endpoint contracts change, such as template-level settings becoming project-level settings.
- Replace hardcoded customer, vendor, branch, account, subaccount, project, task, cost code, class, or numbering values only after confirming the target tenant dataset.
- Preserve business intent. If a field disappears, determine whether it was renamed, moved, replaced by a workflow action, or no longer needed.
- For update calls, avoid sending large expanded objects when a sparse update with key fields and changed values is safer.

## Running and Reviewing

1. Build with the repository's normal command, such as `dotnet build`, `msbuild`, `npm test`, or the project-specific script.
2. If the user asks to run against a real Acumatica instance, expect network access and request escalation when sandboxing blocks the run.
3. Run the smallest useful smoke test first: authentication, endpoint metadata/read, then one write workflow if needed.
4. Review outputs, logs, and captured HTTP exchanges for:
   - scenario/job status
   - failed step and exception text
   - HTTP status code and Acumatica response body
   - request URL, endpoint version, entity/action, filter, select/expand, and payload shape
   - sanitized secrets
5. Fix one failure class at a time and rerun enough to prove the fix. Avoid broad refactors during diagnostic stabilization.

## Reporting Style

- Lead with the outcome: upgraded, blocked, failing scenario, or proposed migration plan.
- Include source-file references for concrete fixes.
- Separate verified facts from inferences based on Acumatica behavior or endpoint docs.
- Report commands run and whether they passed.
- If diagnostics were not run, say exactly what is missing: credentials, OAuth connected app details, authorization code, refresh token, reachable test instance, or approval for network access.
- Never expose secrets from configuration, logs, or token responses.
