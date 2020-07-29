---
title: Léonie Borne
auto-header: none
icon: fa-tree
cover-photo: assets/images/bogey-hole.jpg
cover-photo-alt: LB
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
	{% if person.initials == "LB" %}
	  <div class="col">
		<img class="portrait" src="{{ person.image }}" alt="">
	  </div> 
	  <div class="col">
	      <h2> {{person.name}} </h2>
              <h3> {{ person.role }} </h3>
		 {{ person.research_interest | markdownify }}
		 <ul class="icons">
		{% for network in person.social %}
		  <li><a href="{{- network.url -}}" class="{{ network.icon }} fa-2x"></a></li>
		{% endfor %}
		</ul>
	  </div> 
	{% endif %}
  {% endfor %}
  </div>
</section>

## Research Interests
* I am passionate about the use of artificial intelligence in medical imaging. My work aims to develop intelligent algorithms to help the analysis of these images, notably using deep learning. 
* How does our brain work? This is still a mystery today and the algorithms I am developing aim to give us a clearer picture. 
I have been working in particular on the folds of the cortex, in order to understand their link with the functioning of the brain.

## Biography
After a master's degree in artificial intelligence, Leonie Borne did her PhD at Neurospin in France. In this research centre for the innovation of brain imaging, she mainly worked on the development of an algorithm for the automatic recognition of cortical folds, under the supervision of J.-F. Mangin and D. Riviere. For this purpose, she developed and implemented different machine learning algorithms, including deep learning algorithms. The tools she developed are now available in the BrainVISA toolbox ([www.brainvisa.info](www.brainvisa.info)), to help researchers study the link between the fold shape and brain function. Following her PhD, Leonie started a postdoc in 2020 in M. Breakspear's team at HMRI. 



