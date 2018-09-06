---
layout: page
title: Publications
permalink: /publications/
---

{% assign pubs = site.publications | sort: 'year' | reverse %}
{% for pub in pubs %}
{% if forloop.first %}
{% assign cyear = pub.year %}
<h4>{{ cyear }}</h4>
<ul>
{% endif %}
{% if pub.year != cyear %}
{% assign cyear = pub.year %}
</ul>
<hr />
<h4>{{ cyear }}</h4>
<ul>
{% endif %}
   {% if pub.title %}<li> <a href="{{ pub.url }}">{{ pub.title }}</a> </li> {% endif %}
{% if forloop.last %}
</ul>
{% endif %}
{% endfor %}
