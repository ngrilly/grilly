My personal website.

Install dependencies:

    $ brew install zola gettext translate-toolkit

Serve locally:

    $ zola serve

# Translations

Extract translatable strings and update .po files:

    $ make

Launch poedit:

- Open `po/fr.po`
- Translate
- Save and quit

Update HTML pages with the new translations:

    $ make

# Todo

- Keep utility-first CSS classes?
- Add a favicon?
- Add link to Threads
- Replace email icon with email address in plain text?
- Migrate ngrilly.substack.com here?
- Let visitors provide feedback — like and/or comment? Using email, social networks, HN, giscus or something else?
- Should we fingerprint the stylesheet URL and set `cache-control: public, max-age=31556926` instead of `cache-control: public, max-age=0, must-revalidate` (Cloud Pages and Netlify's default)?
    - Pro: No need to revalidate the stylesheet on every page load.
    - Con: All HTML files are invalidated on every update of the stylesheet.
    - Further reading:
        - https://www.netlify.com/blog/2017/02/23/better-living-through-caching/
        - https://stackoverflow.com/questions/52308658/netlify-headers-cache-control-for-static-assets.
        - https://answers.netlify.com/t/how-does-asset-optimization-enable-long-term-cacheable-without-revalidation/10530

# Redirections

grilly.com and blog.grilly.com are redirected to www.grilly.com by Gandi.
