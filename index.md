---
layout: home
---

{% for page in site.pages %}
{% if page.name != "index.md" %}
- [{% if page.title %}{{ page.title }}{% else %}{{ page.name }}{% endif %}]({% link {{ page.name }} | relative_url %})
{% endif %}
{% endfor %}

