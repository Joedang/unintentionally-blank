---
layout: default
---

{% assign posts = site.pages | where: "layout", "post" | sort: "date" | reverse %}
{% for post in posts limit: 10 %}
## [{{ post.title }}]({{ post.url }})
{{ post.date }}  
{{ post.oneLiner }}  
![]({{ post.splash.src }})
{% endfor %}

{% if posts.size > 10 %}
## And the Rest...
Checkout the [older posts here](/archive).
{% endif %}
