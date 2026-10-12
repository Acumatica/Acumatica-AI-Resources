# Markup and refresh

Acumatica Wiki markup is not Markdown. For a small original article, start with
one heading, a paragraph and a numbered list, then inspect the native render:

```text
==Sample Requests==
View a request before opening its detail.

#Select a request.
#Open its detail and verify the request number.
```

Use the release's [Wiki markup reference](../../../../Documentation/UserGuide/DM__con_Wiki_Using_Wiki_Markup.md)
and [article-linking reference](../../../../Documentation/UserGuide/DM__how_Wiki_Linking_Articles.md)
for richer constructs. These fictional instructions demonstrate syntax only;
they do not assert that a particular deployed form exposes these actions.

For an HTTPS link, verify the actual rendered `href` and destination, including
query parameters, rather than accepting a plausible caption. Do not extrapolate
the delimiter or escaping rules from a different link type or one working URL.
Inspect tables and list boundaries for literal markup. Prefer native Wiki links
where appropriate and preserve existing stable article targets.

Refresh only sections affected by implementation changes. Recheck prerequisites,
field meanings, supported actions and old candidate/deferred language. If an
existing pipeline generates plain text or search excerpts, update them with the
rich content. A second generation with unchanged inputs should produce no diff
and should not append duplicate headings or erase human-owned prose.
