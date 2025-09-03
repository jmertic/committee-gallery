# Embeddable Committee Gallery for LF Project WordPress sites

[![License](https://img.shields.io/github/license/jmertic/committee-gallery)](LICENSE)
[![Build](https://github.com/jmertic/committee-gallery/actions/workflows/jekyll.yml/badge.svg)](https://github.com/jmertic/committee-gallery/actions/workflows/jekyll.yml)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=jmertic_committee-gallery&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=jmertic_committee-gallery)

Many of our LF Projects use the 'Persons' post type to display the list of committee members on the project website. Since committee management is handled in LFX, the website must be manually synchronized to ensure accuracy. While committee member changes are usually only a few times a month, we see headshots, titles, and bios change from time to time, and those need to be synced.

This project aims to pull the committee member list and member information and display it using the same HTML used on the LF project websites or in other embeds or visuals, such as slide decks.

## Adding a committee

It’s an easy one-step process to add a new committee. Add a new page in the root directory with the extension `.md` with the contents as below.

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

If you need to add additional content or CSS for rendering, you can do this after the front matter. 

## Getting the committee data correct

LFX PCC Committee data predominantly pulls from the profile data in the committee member’s [openprofile.dev](https://openprofile.dev) profile. Specific fields leveraged include:

- First Name
- Last Name
- Title
- Current Organization
- About Me ( instructions for editing [here](https://docs.linuxfoundation.org/lfx/my-profile/profile#id-5.-about-me) )
- GitHub and LinkedIn ( instructions for editing [here](https://docs.linuxfoundation.org/lfx/my-profile/profile#id-5.-connect-linkedin-and-github) )

Instructions for updating fields for which specific instructions aren’t listed above can be found [here](https://docs.linuxfoundation.org/lfx/my-profile/settings/update-profile-information).

This data can be overridden for the user on the committee itself. Details can be found [here](https://docs.linuxfoundation.org/lfx/project-control-center/v2-latest-version/collaborations/committees/adding-members-to-a-committee).

## Hosting on a website

For WordPress, you can remove the Persons block in the page editor and replace it with a ‘Raw HTML’ block with the contents as below:

```html
<div w3-include-html="https://jmertic.github.io/committee-gallery/FILENAME.html"></div>
<script src="https://jmertic.github.io/committee-gallery/embed.js"></script>
```

`FILENAME` matches the filename of the file created, substituting `.md` with `.html`.

# Contributing

Issues and pull requests to fix issues or add new renders or filters are always welcome.

## Current list of committees and renders

See [here](https://jmertic.github.io/committee-gallery)

