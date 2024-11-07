## Drafts
{% for post in site.posts %}
  {% if post.draft %}
    ### [{{ post.title }}]({{ site.baseurl }}{{ post.url }})
    {{ post.description }}
  {% endif %}
{% endfor %}
