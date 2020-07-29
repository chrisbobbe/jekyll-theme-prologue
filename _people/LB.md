---
title: LB
auto-header: none
order: 2
---
<head>
<style>
img.portrait {
  border-radius: 50%;
  width: 300px;
  border: 1px solid #ddd;
  padding: 5px;
}
.row {
  display: flex;
  justify-content: center;
}
</style>
</head>

<section>
  <div class="row">
  {% for person in site.team.people %}
	{% if person.initals == title %}
	  <div class="col">
		<img class="portrait" src="{{ person.image }}" alt="">
		 <ul class="icons">
		{% for network in person.social %}
		  <li><a href="{{- network.url -}}" class="{{ network.icon }}"></a></li>
		{% endfor %}
		</ul>
	  </div> 
	  <div class="col">
	      <h3> {{person.name}} </h3>
              <b> {{ person.role }} </b>
		 {{ person.research_interest | markdownify }}
	  </div> 
  </div>
	{% endif %}
  {% endfor %}
</section>

I am passionate about the use of artificial intelligence in medical imaging. 
My work aims to develop intelligent algorithms to help the analysis of these images, notably using deep learning. 
How does our brain work? This is still a mystery today and the algorithms I am developing aim to give us a clearer picture. 
I have been working in particular on the folds of the cortex, in order to understand their link with the functioning of the brain.
