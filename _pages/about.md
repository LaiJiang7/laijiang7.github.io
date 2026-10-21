---
permalink: /
title: "About me"
title_id: about
single_page: true
author_profile: true
redirect_from:
  - /about/
  - /about.html
---

I am a PhD student in the Department of Electronic and Electrical Engineering at University College London (UCL), supervised by Prof [Christos Masouros](https://scholar.google.com/citations?user=G9HPPKwAAAAJ&hl=en) (Fellow, IEEE) and co-supervised by Dr [Anna Maria Mandalari](https://scholar.google.com/citations?user=iASd_SsAAAAJ&hl=en). Before that, I received my M.Sc. degree with Distinction in Communications and Signal Processing from the University of Manchester in 2021, and B.Eng. degree in Design of Integrated Circuit and Integrated System from University of Electronic Science and Technology of China (UESTC) in 2020.

My research focuses on the intersection of  **integrated sensing and communication (ISAC)** and **artificial intelligence (AI)**.

<!-- Each section below reads its content from the corresponding page file. -->

<h2 id="news" class="home-section-heading">News</h2>

{% capture news_section %}{% include_relative news.md %}{% endcapture %}
{{ news_section | split: '---' | slice: 2, 10000 | join: '---' | markdownify }}

<h2 id="education" class="home-section-heading">Education</h2>

{% include homepage-education.html %}

<h2 id="experience" class="home-section-heading">Industry Experience</h2>

{% include homepage-experience.html %}

<h2 id="publications" class="home-section-heading">Selected Publications</h2>

{% capture publications_section %}{% include_relative publications.html %}{% endcapture %}
{{ publications_section | split: '---' | slice: 2, 10000 | join: '---' }}

<h2 id="service" class="home-section-heading">Service</h2>

{% capture service_section %}{% include_relative service.md %}{% endcapture %}
{{ service_section | split: '---' | slice: 2, 10000 | join: '---' | markdownify }}

<h2 id="contact" class="home-section-heading">Contact</h2>

{% capture contact_section %}{% include_relative contact.md %}{% endcapture %}
{{ contact_section | split: '---' | slice: 2, 10000 | join: '---' | markdownify }}
