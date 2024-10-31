# Embeddable Committee Gallery for LF Project WordPress sites

Many of our LF Projects use the 'Persons' post type to display the list of committee members on the project website. As committee management is done in LFX, keeping the website updated requires manual synchronization to keep it accurate. While committee member changes are usually only a few times a month, we see headshots, titles, and bios change from time to time, and those need to be synced.

This project aims to pull the committee member list and member information and display using the same HTML used on the LF project websites or in other embeds or visuals such as slide decks. Currently, we have three renders supported:

## Adding a committee

It's an easy one-step process to add a new committee. Add a new page in the root directory with the extention `.md` with the contents as below.

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

