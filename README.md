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

[{{ post.title }}]({{ post.url }})

{% endunless %}
{% endfor %}

# Test post for each post url and title


<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

# Test for each tags 

{% for tag in site.tags %}
  <h3>{{ tag[0] }}</h3>
  <ul>
    {% for post in tag[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}


# Test post preview
<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>
