# Embeddable Committee Gallery for LF Project WordPress sites

Many of our LF Projects use the 'Persons' post type to display the list of committee members on the project website. As committee management is done in LFX, keeping the website updated requires manual synchronization to keep it accurate. While committee member changes are usually only a few times a month, we see headshots, titles, and bios change from time to time, and those need to be synced.

This project aims to pull the committee member list and member information and display using the same HTML used on the LF project websites or in other embeds or visuals such as slide decks. Currently, we have three renders supported:

- [oldsite](https://github.com/jmertic/committee-gallery/blob/main/_includes/default.html) is the HTML layout most LF project websites used from 2021 or earlier.
- [newsite](https://github.com/jmertic/committee-gallery/blob/main/_includes/newsite.html) is for LF project websites from 2022 and newer.
- [slidedeck](https://github.com/jmertic/committee-gallery/blob/main/_includes/slidedeck.html) is for including a committee headshot list in a slide deck. (default option)

Additionally, there are five filters available:

- `all` - returns all rows.
- `alternates` - returns all records with `Voting Status = 'Alternative Voting Rep'`.
- `staff` - returns all records with `Role = 'LF Staff'`.
- `voting` - returns all records with `Voting Status = 'Voting Rep'`.
- `voting-and-alternates` - returns all records with `Voting Status = 'Voting Rep' or 'Alternative Voting Rep'`.

Issues and pull requests to fix issues or add new renders or filters are always welcome.

## Adding a committee

It's an easy two-step process to add a new committee. Add a pull request to commit to this repo to host the committee HTML code.

### Entry in _config.yml

First, edit [_config.yml](https://github.com/jmertic/committee-gallery/blob/main/_config.yml) and add the following lines under `jekyll_get_json:`

```yaml
  - data: # project name and committee in Kebab case
    json: 'https://api-gw.platform.linuxfoundation.org/project-service/v2/public/projects/PROJECT_ID/committees/COMMITTEE_ID/members'
```
You can get the `PROJECT_ID` and `COMMITTEE_ID` from the URL of the committee page in the LFX Project Control Center; see the URL below:

```
https://projectadmin.lfx.linuxfoundation.org/project/a0941000002wBymAAE/collaboration/committees/1c29a7fe-0ff4-4728-a21d-561c6b1c7676
```
In this example, `PROJECT_ID` would be `a0941000002wBymAAE` and `COMMITTEE_ID` would be `1c29a7fe-0ff4-4728-a21d-561c6b1c7676`

Example of an entry:

```yaml
  - data: open-mainframe-project-governing-board
    json: 'https://api-gw.platform.linuxfoundation.org/project-service/v2/public/projects/a0941000002wBymAAE/committees/1c29a7fe-0ff4-4728-a21d-561c6b1c7676/members'
```

### New page

The easiest way to add new pages is to use the file naming convention below to indicate the `data-source`, `render`, and `filter` as follows:

```
<data-source>_<render>_<filter>.md
```

For example, to create a view for the `data` key in the `_config.yml` file for the render `olddata` and filter `staff`, the filename would be:

```
open-mainframe-project-governing-board_olddata_staff.md
```

The default render is `slideshow,` and the filter is `voting`; if you don't specify those options, these will be the defaults. For example, if for the data source `open-mainframe-project-governing-board,` we want a slideshow view of voting members, you can name the file:

```
open-mainframe-project-governing-board.md
```

Alternatively, you can add Jekyll front matter keys to override the filename-derived values.


```markdown
---
data-source: open-mainframe-project-tac
render: newsite
filter: all
---
```

## Hosting on the site

For WordPress, you can remove the Persons block in the page editor and replace it with a 'Raw HTML' block with the contents as below:

```html
<div w3-include-html="https://jmertic.github.io/committee-gallery/DATA_NAME.html"></div>
<script src="https://jmertic.github.io/committee-gallery/embed.js"></script>
```

`DATA_NAME` matches the `data:` key in the entry in the `_config.yml` file.
