# README


This folder contains both the formatting files and the content files for the documentation website.

The site uses the [Cayman theme](https://github.com/pages-themes/cayman).  This is set through the Settings section of this GitHub repository.

The \_layouts folder contains an html file called default.html that formats the default layout of each page.

The \_includes folder contains the navigation menu html files.

The assets/css folder contains the css file with customization for the sidebar navigation.

For a markup file to show up within the website, the header needs to have, at the least, the following:

  --- (three dashes)
  
  permalink: [pagename]/
  
  --- (three dashes)
  
  For each section of the guide, create a new folder in the docs/ folder.  Do not capitalize the folder name.
  

For pages with specific process or curation information put the following at the top of the md file:
---
permalink: /[linkname]/
layout: curators
title: Digital Repository Documentation
---




