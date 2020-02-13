{% comment %}
This little template nugget takes a page object named "post" from the 
environment and displays it using a level-2 heading.
This *should* work anywhere within the baseurl.
{% endcomment %}

## [{{ post.title }}]({{ site.baseurl | append: post.url | replace: '//', '/' }})
{{ post.date }}  
{{ post.oneLiner }}  
![{{ post.splash.alt }}]({{ site.baseurl | append: post.splash.src | replace: '//', '/' }} "{{ post.splash.alt }}")
