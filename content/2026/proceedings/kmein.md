+++
title = "Cuneiform as a Service: Clay Tablets as an Enterprise-Grade Long-Term Archival Tier"

[extra]
authors = [{ name = "kmein", affiliation = "independent researcher" }]
pdf = "/static/pdf/kmein2026.pdf"
pages = 8
+++

Enterprises are legally and strategically obliged to retain data for ever longer periods, yet every mainstream archival medium is rated for decades at best. This paper evaluates the _clay tablet_ as a write-once, read-many (WORM) storage tier with a field-proven retention of more than 5,300 years. We benchmark clay against LTO tape, Amazon S3 Glacier and M-DISC, and find that it outperforms all of them on observed retention by two to three orders of magnitude.

We further show that clay supports a clean separation between mutable drafts (unfired clay) and immutable commits (fired clay), that its disaster recovery story is uniquely _antifragile_, and that it ships with a mature customer support history dating back to 1750 BC. Interoperability is ensured through the Unicode cuneiform blocks and freely licensed fonts. We conclude with a migration roadmap towards a _tablet-first_ archival strategy.
