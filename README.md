# System Neuroscience Group Website

Welcome on the SNG Github Page!


# Add your profile

You will have to (1) add an image of you in the assets/images folder, (2) add you as a member of the team in the file _config.yml 
and (3) add a Markdown file with a short description of your research interests in the _people folder. Note that step (3) is optional.

So here are the steps you need to do to make a pull request to do so.

1. **Fork the repository to create a copy of it on your github account**

You can find more information about forking [here](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo).

2. **Clone the repository from your github account to your computer**

```
git clone https://github.com/YOUR_GITHUB_USERNAME/SNG-Newy.github.io
```

3. **Create a new branch where you want to add your profile, and switch to that branch**

```
git branch YOUR_NAME-profile
git checkout YOUR_NAME-profile
```

4. **STEP (1) Add an image of you in the assets/images folder**

Put a copy of your image in the assets/images folder and rename it with your name like YOUR_NAME.jpg.

5. **STEP (2) Add you as a member of the team in the file _config.yml**

Modify the _config.yml file as in the example below:

```
...
team:
    title: "SYSTEMS NEUROSCIENCE GROUP"
    subtext: Click on our portrait to get more information!
    section: team
    people:
      - name: "Léonie Borne"
        initials: "LB"
        role: "Postdoc"
        image: assets/images/leonie_borne.jpg
        social:
          - url: https://twitter.com/LeonieBorne
            icon: fab fa-twitter
          - url: https://fr.linkedin.com/in/leonieborne
            icon: fab fa-linkedin-in
          - url: https://www.researchgate.net/profile/Leonie_Borne
            icon: fab fa-researchgate
        research_interest: Machine Learning & Neuroimaging
        newline: false
     - name: "YOUR NAME"
       initials: "YN"
       role: "Guinea pig"
       image: assets/images/YOUR_NAME.jpg
       social:
         - url: https://www.youtube.com/watch?v=OEbraNu7uU4
           icon: fab fa-youtube
       research_interest: Human brain
       newline: false
...
```

- `name`: your full name
- `initials`: initials of your full name
- `role`: role in the team
- `image`: path to your image
- `social`: list of the URL to your social accounts. If you want to add one that is not in the example, you can search for the corresponding icon [here](https://fontawesome.com/icons).
- `research_interest`: your area of research
- `newline`: default is `false`. Use `true` when you want to start a new line of people in the homepage 

6. **STEP (3) Add a markedown file with a short description of your research interests in the _people folder (OPTIONAL)**

Create a file named YOUR_NAME.md in the _people folder.

Start the file with the following informations:

```
---
title: YOUR NAME
auto-header: none
icon: fa-user
order: 2
---
```
- `title`: your name
- `icon`: you can replace the icon with one you prefer [here](https://fontawesome.com/icons)
- `order`: orders the sequence of profiles on the page (choose a number not yet taken)

Then, in the same YOUR_NAME.md file, copy/paste the following:
```
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
	{% if person.initials == "YN" %}
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
```
And replace `YN` in `{% if person.initials == "YN" %}` with your initials.

Finally, in the same YOUR_NAME.md file, add a short description of your research interest/profile using [Markdown](https://www.markdownguide.org/basic-syntax/) syntax:

```
## Research Interests
As a guinea pig who has participated in many experiments, 
I am very interested in the functioning of the human brain. 
For example, I don't understand why they wear clothes. 
It's so much more comfortable to walk around naked!

## Biography
I love going in circles. And eating *peanuts*.
```

7. **Add and then commit all the changes you have made**

```
git add --all
git commit -m 'adding my profile'
```

8. **Update your github repository by pushing to it the changes made on the repository on your computer**

```
git push
```

9. **Open a pull request**

Go and open a pull request page from the SNG-Newy.github.io repository.

We (and the magic of automation) will take care of the rest. :-)



# Contributing

Please feel free to submit issues and feature requests!

If you need more information about the general organization of the website, you can check the original theme [here](https://github.com/chrisbobbe/jekyll-theme-prologue).
