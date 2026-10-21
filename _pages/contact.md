---
layout: single
title: "Contact"
permalink: /contact/
author_profile: true
---

{% if site.author.email %}
For academic enquiries, please use my work email.

**Work email:** [{{ site.author.email }}](mailto:{{ site.author.email }})
{% endif %}

{% if site.author.personal_email %}
**Personal email:** [{{ site.author.personal_email }}](mailto:{{ site.author.personal_email }})
{% endif %}

{% unless site.author.email or site.author.personal_email %}
Contact details will be added here.
{% endunless %}

{% if site.author.employer %}
**Affiliation:** {{ site.author.employer }}
{% endif %}

{% if site.author.department %}
**Department:** {{ site.author.department }}
{% endif %}

{% if site.author.location %}
**Location:** {{ site.author.location }}
{% endif %}
