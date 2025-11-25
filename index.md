---
layout: home
---

{% for page in site.pages %}
{% if page.name != "index.md" %}
- [{% if page.title %}{{ page.title }}{% else %}{{ page.name }}{% endif %}]({{ page.url | relative_url }})
<!-- DEBUG - remove after troubleshooting -->
<p>page.name: {{ page.name | inspect }}</p>
<p>page.path: {{ page.path | inspect }}</p>
<p>page.url: {{ page.url | inspect }}</p>
<p>page.relative_path: {{ page.relative_path | inspect }}</p>

{% endif %}
{% endfor %}

