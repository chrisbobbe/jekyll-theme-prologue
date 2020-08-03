---
title: Johan van der Meer
auto-header: none
icon: fa-user
order: 3
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
	{% if person.initials == "JN" %}
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
Our brains produces electrical patterns and rhythms that occur during walking, concentration in solving a difficult arithmatical question, or noticing a car that is approaching too fast. How to relate these signals to the different types of behaviors is usually done with experiments where the important analyses are done after all data has been acquired. These types of analyses can then discover assocations. However, causal relationships are harder - these require a more dynamic approach where you change the conditions of the experiment based on the current state of the brain signal.


Coupled with this thought is Neurofeedback training, an often used (and touted) approach whereby a (prolonged) training regimen of particular aspects of your brain signal is hypothesized to result in a concomitant improvement in some behavior. No-one really knows how this works, though, and the one theory of how this is supposed to work - neurons that fire together wire together (Hebbian Learning) does not seem to hold up when delays in the signal processing stream in NF training might prevent the 'fire together' part of this equation.


Finally, I am interested in deployment of these complicated real-time experimental and analysis approaches outside of the confines of the Lab, with their specialized (and expensive) machinery. I'd like to make an effort to remove somf of these barriers and make it more easy to perform experimental acquisitions anywhere. Not by removing necessary complexity (i.e. make a one-push-button approach), but by trying to explain all necessary components as clearly as possible.

