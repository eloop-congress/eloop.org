# eloop.org

push new stuff to `gh-pages` branch to also change the front page.

The CNAME defines for which domain this repo will be served.

## Using dev environment

After cloning this repo:

```bash
git remote add dev git@github.com:eloop-congress/dev.eloop.org.git
git checkout -b gh-pages-dev
echo dev.eloop.org > CNAME
git add CNAME
git commit
git push dev gh-pages-dev:gh-pages --force
```

## TODO
* Use travis CI to push instead of doing it manually
