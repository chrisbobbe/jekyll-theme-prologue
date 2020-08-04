---
title: Nikitas Koussis
auto-header: none
icon: fa-chess-knight
order: 4
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
	{% if person.initials == "NK" %}
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
I am very interested in the cognitive symptoms of psychosis
and more generally in the functioning and structure of the 
human brain in pathology and mental illness. 

## Biography
I am Greek and Australian, and have Gamilaraay heritage on my Australian side.
I completed my undergrad at Queensland University of Technology and moved to Newcastle in 2020.
I am currently completing a PhD at University of Newcastle under Michael Breakspear.
