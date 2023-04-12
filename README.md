# Embeddable Commitee Gallery for LF Project Wordpress sites

Many of our LF Project use the 'Persons' post type to display the list of members of a given committee on the project website. As committee management is done in LFX, keeping the website up to date requires manually synchronization to keep accurate. While committee member changes are usually only a few times a month, we do see headshots, titles, and bios change from time to time as well and those don't get synced.

The purpose of this project is to enable pulling the committee member list and member information and displaying using the same HTML used on the LF project websites. Currently we have two templates supported:

- [default](https://github.com/jmertic/committee-gallery/blob/main/_layouts/default.html) is the HTML layout used by most LF project websites from 2021 or earlier.
- [newsite](https://github.com/jmertic/committee-gallery/blob/main/_layouts/newsite.html) is for LF project websites from 2022 and newer.
- [slidedeck](https://github.com/jmertic/committee-gallery/blob/main/_layouts/slidedeck.html) is for including a committee headshot list in a slidedeck.

Issues are always welcome, as well as pull requests to fix issues or add new templates.

## Adding a committee

It's an easy two step process to add a new committee. Note that you can add a pull request to commit to this repo to host the committee HTML code.

### Entry in _config.yml

First, edit [_config.yml](https://github.com/jmertic/committee-gallery/blob/main/_config.yml) and add the following lines under `jekyll_get_json:`

```yaml
  - data: # project name and committee in Kebab case
    json: 'https://api-gw.platform.linuxfoundation.org/project-service/v2/public/projects/PROJECT_ID/committees/COMMITTEE_ID/members'
```
You can get the `PROJECT_ID` and `COMMITTEE_ID` from the URL of the committee page in LFX Project Control Center; see the URL below:

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

Create a new markdown document in the root directory of the repository, using the name of `data` key above as the filename with the `.md` suffix. For the example entry above, the filename would be `open-mainframe-project-governing-board.md`.

The file contents will use Jeykll Front Matter with one key.

```markdown
---
layout: # choice of layout; currently one of 'default' or 'newsite'
---
```

Example of a file:
```markdown
---
layout: newsite
---
```
## Hosting in the site

For Wordpress, you can remove the Persons block in the page editor and replace with a 'Raw HTML' block with the contents as below:

```html
<div w3-include-html="https://jmertic.github.io/committee-gallery/DATA_NAME.html"></div>
<script src="https://jmertic.github.io/committee-gallery/embed.js">
```

`DATA_NAME` matches the `data:` key in the entry in the `_config.yml` file.
