# Embeddable Committee Gallery for LF Project WordPress sites

Many of our LF Projects use the 'Persons' post type to display the list of committee members on the project website. As committee management is done in LFX, keeping the website updated requires manual synchronization to keep it accurate. While committee member changes are usually only a few times a month, we see headshots, titles, and bios change from time to time, and those need to be synced.

This project aims to pull the committee member list and member information and display using the same HTML used on the LF project websites or in other embeds or visuals such as slide decks. Currently, we have three renders supported:

- [oldsite](_includes/oldsite.html) is the HTML layout most LF project websites used from 2021 or earlier.
- [newsite](_includes/newsite.html) is for LF project websites from 2022 and newer.
- [slidedeck](_includes/slidedeck.html) is for including a committee headshot list in a slide deck. (default option)

Additionally, there are five filters available:

- `all` - returns all rows.
- `alternates` - returns all records with `Voting Status = 'Alternative Voting Rep'`.
- `staff` - returns all records with `Role = 'LF Staff'`.
- `voting` - returns all records with `Voting Status = 'Voting Rep'`.
- `voting-and-alternates` - returns all records with `Voting Status = 'Voting Rep' or 'Alternative Voting Rep'`.

Issues and pull requests to fix issues or add new renders or filters are always welcome.

## Current list of committee and renders

- [Academy Software Foundation - Budget/Growth Committee - Slidedeck](https://jmertic.github.io/committee-gallery/academy-software-foundation-budget-growth-committee.html)
- [Academy Software Foundation - Governing Board - Slidedeck](https://jmertic.github.io/committee-gallery/academy-software-foundation-governing-board.html)
- [Academy Software Foundation - Governing Board - Old Site](https://jmertic.github.io/committee-gallery/academy-software-foundation-governing-board_oldsite.html)
- [Academy Software Foundation - Governing Board Alternates - Slidedeck](https://jmertic.github.io/committee-gallery/academy-software-foundation-governing-board_slidedeck_alternates.html)
- [Academy Software Foundation - Staff - Old Site](https://jmertic.github.io/committee-gallery/academy-software-foundation-staff_oldsite_all.html)
- [Academy Software Foundation - Staff - Slidedeck](https://jmertic.github.io/committee-gallery/academy-software-foundation-staff_slidedeck_all.html)
- [Academy Software Foundation - TAC - Slidedeck](https://jmertic.github.io/committee-gallery/academy-software-foundation-tac.html)
- [Academy Software Foundation - TAC - Old Site](https://jmertic.github.io/committee-gallery/academy-software-foundation-tac_oldsite.html)
- [LF Energy Foundation - Governing Board - Slidedeck](https://jmertic.github.io/committee-gallery/lf-energy-foundation-governing-board.html)
- [LF Energy Foundation - Governing Board - New Site](https://jmertic.github.io/committee-gallery/lf-energy-foundation-governing-board_newsite.html)
- [LF Energy Foundation - Marketing Advisory Committee Voting Members - Slidedeck](https://jmertic.github.io/committee-gallery/lf-energy-foundation-mac.html)
- [LF Energy Foundation - Marketing Advisory Committee Voting Members - New Site](https://jmertic.github.io/committee-gallery/lf-energy-foundation-mac_newsite.html)
- [LF Energy Foundation - Marketing Advisory Committee All Members - Slidedeck](https://jmertic.github.io/committee-gallery/lf-energy-foundation-mac_slidedeck_allbutstaff.html)
- [LF Energy Foundation - Staff - New Site](https://jmertic.github.io/committee-gallery/lf-energy-foundation-staff_newsite_all.html)
- [LF Energy Foundation - Staff - Slidedeck](https://jmertic.github.io/committee-gallery/lf-energy-foundation-staff_slidedeck_all.html)
- [LF Energy Foundation - TAC - Slidedeck](https://jmertic.github.io/committee-gallery/lf-energy-foundation-tac.html)
- [LF Energy Foundation - TAC - New Site](https://jmertic.github.io/committee-gallery/lf-energy-foundation-tac_newsite.html)
- [LF Energy Standards and Specifications - Steering Committee - Slidedeck](https://jmertic.github.io/committee-gallery/lfess-steering-committee.html)
- [LF Energy Standards and Specifications - Working Group Leads - Slidedeck](https://jmertic.github.io/committee-gallery/lfess-wg-leads_slidedeck_all.html)
- [Open Mainframe Project - Ambassadors - Slidedeck](https://jmertic.github.io/committee-gallery/open-mainframe-project-ambassadors.html)
- [Open Mainframe Project - Ambassadors - New Site](https://jmertic.github.io/committee-gallery/open-mainframe-project-ambassadors_newsite.html)
- [Open Mainframe Project - Governing Board - Slidedeck](https://jmertic.github.io/committee-gallery/open-mainframe-project-governing-board.html)
- [Open Mainframe Project - Governing Board - New Site](https://jmertic.github.io/committee-gallery/open-mainframe-project-governing-board_newsite.html)
- [Open Mainframe Project - Marketing Committee - Slidedeck](https://jmertic.github.io/committee-gallery/open-mainframe-project-marketing-committee.html)
- [Open Mainframe Project - Marketing Committee - New Site](https://jmertic.github.io/committee-gallery/open-mainframe-project-marketing-committee_newsite.html)
- [Open Mainframe Project - Staff - New Site](https://jmertic.github.io/committee-gallery/open-mainframe-project-staff_newsite_all.html)
- [Open Mainframe Project - Staff - Slidedeck](https://jmertic.github.io/committee-gallery/open-mainframe-project-staff_slidedeck_all.html)
- [Open Mainframe Project - TAC - Slidedeck](https://jmertic.github.io/committee-gallery/open-mainframe-project-tac.html)
- [Open Mainframe Project - TAC - New Site](https://jmertic.github.io/committee-gallery/open-mainframe-project-tac_newsite.html)
- [Open Mainframe Project - Open Mainframe Summit Program Committee](https://jmertic.github.io/committee-gallery/open-mainframe-summit-program-committee.html)

## Adding a committee

It's an easy two-step process to add a new committee. Add a pull request to commit to this repo to host the committee HTML code.

### Entry in _config.yml

First, edit [_config.yml](_config.yml) and add the following lines under `jekyll_get_json:`

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

The default render is `slidedeck,` and the filter is `voting`; if you don't specify those options, these will be the defaults. For example, if for the data source `open-mainframe-project-governing-board,` we want a Slidedeck view of voting members, you can name the file:

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
