<link rel="stylesheet" href="./css/style-readme.css">

# jetops.lab.blog

<div class="topnav">
  <a class="active" href="#home">Home</a>
  <!-- <a href="./docs">Articles</a> -->
  <a href="./posts">Articles :)</a>
  <a href="./draft">Articles BETA</a>
  <a href="./utilities-page/contact">Contact</a>
  <a href="./utilities-page/about.md">About</a>
</div>


Jetops blog for articles and tips

## Random post 
go to a random post  [random post](./utilities-jekyll/random)

## Search by tags
[Search by tags](./utilities-jekyll/tags)

## Blog Posts 

{% for post in site.posts %}
{% unless post.categories contains "now" %}

[{{ post.title }}]({{site.baseurl}}{{ post.url }})

{% endunless %}
{% endfor %}



# each tags 

[Each tags Preview](utilities-jekyll/for-each-tags.md)


# Post preview

[All post preview](utilities-jekyll/all-post.md)












<!-- # Test post for each post url and title


<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul> -->