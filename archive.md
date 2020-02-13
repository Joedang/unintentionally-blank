---
layout: page
title: Archive
---

{% assign posts = site.pages | where: "layout", "post" | sort: "date" | reverse %}
{% assign dates = posts | map: "date" %}
{% capture years_string %}
{%- for date in dates -%}
{{- date | date: "%Y" -}},
{%- endfor -%}
{% endcapture %}
{% assign years = years_string | split: ","  | uniq %}

{% for year in years %}
# {{ year }}
------------
{% for post in posts %}
{% assign postYear = post.date | date: "%Y" %}
{% if postYear == year %}
{% include postItem.md %}
{% endif %}
{% endfor %}
{% endfor %}
