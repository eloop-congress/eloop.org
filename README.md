# eloop.org

Website of the eloop conference, built with [Zola](https://www.getzola.org/).

    nix develop -c zola serve    # preview on http://127.0.0.1:1111
    nix build                    # build the site into ./result

Pushing to `gh-pages` deploys: `.github/workflows/deploy.yml` builds the site
and publishes it through GitHub Pages' Actions source (Settings → Pages →
Source: GitHub Actions). The built HTML is not committed anywhere. Despite its
name, `gh-pages` holds the source.

## Content

- `content/<year>/_index.md` is an edition. Date, time, venue, schedule,
  talks, board and reviewers go into `[extra]`; see an existing edition for
  the keys. An edition without `date` shows as "TBA".
- Venues are defined once in `config.toml` under `[extra.venues]` and
  referenced by key.
- `content/<year>/cfp.md` is that edition's call for papers.
- `content/<year>/proceedings/_index.md` holds the proceedings, one `.md` per
  paper with the executive summary as body and `authors`, `pdf`, `pages` in
  `[extra]`. The BibTeX entry is generated.
- PDFs live in `static/static/pdf/` so their URLs from before the Zola
  migration (`/static/pdf/…`) keep working. For the same reason
  `/2025.html` is an alias of the 2025 proceedings.

To announce a new edition, add its directory and point
`extra.current_edition` in `config.toml` at it; the front page follows.

## Placeholders

Text nobody has written yet is marked `[[…]]`, saying what the text is for and
what it should achieve for the visitor. Replace them, don't paraphrase around
them. List the open ones with `grep -rn '\[\[' content config.toml`.

Zola 0.23 renders content through Tera, so `{{`, `{%` and `{#` in Markdown
must be wrapped in `{% raw %}…{% endraw %}`.
