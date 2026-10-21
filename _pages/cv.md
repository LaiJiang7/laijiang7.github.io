---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

## Education
{: #cv-education }

**PhD student**<br>
Department of Electronic and Electrical Engineering<br>
University College London

## Research experience
{: #cv-research-experience }

Research appointments and projects will be added here.

## Publications
{: #cv-publications }

{% if site.publications.size > 0 %}
<ul>{% for post in site.publications reversed %}
  {% include archive-single-cv.html %}
{% endfor %}</ul>
{% else %}
Publications will be added here.
{% endif %}

{% if site.talks.size > 0 %}
## Talks
{: #cv-talks }
<ul>{% for post in site.talks reversed %}
  {% include archive-single-talk-cv.html %}
{% endfor %}</ul>
{% endif %}

{% if site.teaching.size > 0 %}
## Teaching
{: #cv-teaching }
<ul>{% for post in site.teaching reversed %}
  {% include archive-single-cv.html %}
{% endfor %}</ul>
{% endif %}
