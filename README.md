 easy one-step process to add a new committee. Add a new page in the root directory with the extention `.md` with the contents as below.

```markdown
---
lfx_committee_url: <url from LFX PCC Committee page - example https://projectadmin.lfx.linuxfoundation.org/project/a0941000002wBykAAE/collaboration/committees/40ab4fff-0c3b-4718-91e4-e76b2805f34c>
render: # optional, defaults to 'slidedeck'
filter: # optional, defaults to 'voting'
---
```
Options for `render` are:

- [`oldsite`](_includes/oldsite.html) is the HTML layout most LF project websites used from 2021 or earlier.
- [`newsite`](_includes/newsite.html) is for LF project websites from 2022 and newer.
- [`slidedeck`](_includes/slidedeck.html) is for including a committee headshot list in a slide deck. (default option)

Options for `filter` are:

- `all` - returns all rows.
- `allbutstaff` - returns all records with `Role != 'LF Staff'`.
- `alternates` - returns all records with `Voting Status = 'Alternative Voting Rep'`.
- `staff` - returns all records with `Role = 'LF Staff'`.
- `voting` - returns all records with `Voting Status = 'Voting Rep'`. (default option)
- `voting-and-alternates` - returns all records with `Voting Status = 'Voting Rep' or 'Alternative Voting Rep'`.

If you need to add additional contents or CSS for rendering, you can do this after the front matter.

## Hosting on a website

For WordPress, you can remove the Persons block in the page editor and replace it with a 'Raw HTML' block with the contents as below:

```html
<div w3-include-html="https://jmertic.github.io/committee-gallery/FILENAME.html"></div>
<script src="https://jmertic.github.io/committee-gallery/embed.js"></script>
```

`FILENAME` matches the filename of the file created, substituing `.md` with `.html`.

# Contributing

Issues and pull requests to fix issues or add new renders or filters are always welcome.

## Current list of committee and renders

See [here](https://jmertic.github.io/committee-gallery)

