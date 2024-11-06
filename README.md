<link rel="stylesheet" href="./css/style-readme.css">

# jetops.lab.blog

<div class="topnav">
  <a class="active" href="#home">Home</a>
  <!-- <a href="./docs">Articles</a> -->
  <a href="./posts">Articles :)</a>
  <a href="./utilities-page/contact.md">Contact</a>
  <a href="./utilities-page/about.md">About</a>
</div>


Jetops blog for articles and tips



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
