---
layout: default
---

{% assign posts = site.pages | where: "layout", "post" | sort: "date" | reverse %}
{% for post in posts limit: postLimit %}
{% include postItem.md %}
{% endfor %}

{% if posts.size > site.postLimit %}
## And the Rest...
Checkout the [older posts here](./archive).
{% endif %}
