## Drafts
{% for post in site.drafts %}
  {% if post.draft %}
    ### [{{ post.title }}]({{ site.baseurl }}{{ post.url }})
    {{ post.description }}
  {% endif %}
{% endfor %}
