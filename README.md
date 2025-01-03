<link rel="stylesheet" href="./css/style-readme.css">

# jetops.lab.blog

<div class="topnav">
  <a class="active" href="#home">Home</a>
  <!-- <a href="./docs">Articles</a> -->
  <a href="./#blog-posts">Articles :)</a>
  <a href="./#draft-preview">Articles BETA</a>
  <a href="./utilities-page/contact">Contact</a>
  <a href="./utilities-page/about">About</a>
</div>


Jetops blog for articles and tips


## Blog Posts 

{% for post in site.posts %}
{% unless post.categories contains "now" %}

[{{ post.title }}]({{site.baseurl}}{{ post.url }})

{% endunless %}
{% endfor %}

## Random post 
go to a random post  [random post](./utilities-jekyll/random)

## Search by tags
[Search by tags](./utilities-jekyll/tags)


# each tags 

[All tags Preview](utilities-jekyll/for-each-tags.md)


# Post preview

[All post preview](utilities-jekyll/all-post.md)




# Draft Preview

[Draft Preview](utilities-jekyll/display_draft.md)


# Add to your RSS Feed
- Add to your RSS feed [https://amineaupec.github.io/jetops.lab.blog/feed.xml](https://amineaupec.github.io/jetops.lab.blog/feed.xml)

<!-- # Test post for each post url and title


<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul> -->