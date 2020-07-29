---
title: Léonie Borne
auto-header: none
cover-photo: assets/images/bogey-hole.jpg
cover-photo-alt: Leonie Borne
order: 2
order: 3
---

<section>
  <div class="row">
  {% for person in site.team.people %}
	{% if person.name == "Léonie Borne" %}
	  <div class="col">
		<img class="portrait" src="{{ person.image }}" alt="">
		 <ul class="icons">
		{% for network in person.social %}
		  <li><a href="{{- network.url -}}" class="{{ network.icon }}"></a></li>
		{% endfor %}
		</ul>
	  </div> 
	  <div class="col">
	      <h1> {{person.name}} </h1>
              <h3> {{ person.role }} </h3>
		 {{ person.research_interest | markdownify }}
		 {{title}}
	  </div> 
  </div>
	{% endif %}
  {% endfor %}
</section>

I am passionate about the use of artificial intelligence in medical imaging. 
My work aims to develop intelligent algorithms to help the analysis of these images, notably using deep learning. 
How does our brain work? This is still a mystery today and the algorithms I am developing aim to give us a clearer picture. 
I have been working in particular on the folds of the cortex, in order to understand their link with the functioning of the brain.
