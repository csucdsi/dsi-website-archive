# Blog site for the Chico State Data Science Initative

https://datascience.csuchico.edu 

# NOTE
* if you clean the site, you delete the public folder. You then have to re-render ALL posts on the next build.			- Don't do this

# todo

- [x] Enable blog post link from campus website
- [x] Talk to csuc to get https
- [ ] enable mathjax to work [soln?](https://github.com/devcows/hugo-universal-theme/pull/153)
- [ ] trim down categories in blog posts 
- [ ] write a post to announce new siteS
- [ ] write covid post
- [ ] fix webpage tab icon
    - head.html, line 49
- [ ] change header on blog page from "blog" 
    - Something about  `<h2>{{ .Site.Params.recent_posts.title | markdownify }}</h2>`
- [ ] remove 'recent posts' from the footer
- [ ] change footer contact button to be an email
- [ ] figure out copyright
- [ ] create instructions on how to contribute posts to this site


# File org & post order
```
.
|--index.Rmd (just used to call `serve.site()`)
|--README.md (this file)
|--dsi_website.Rproj (R project file)
|--config.toml (site configuration file)
| 
|--content
|  |--page (static pages) -- None. Removed when converted to blog site. 
|  |--post
|     |--YYYY-MM-DD_topic_announce.md (slug = topic_stuff)
|  |--event[formerly known as workshops]  
|     |--YYYY-MM-DD_topic.Rmd (slug = topic_stuff)
|     |--topic_stuff (--WARNING--: *MD files in here will be rendered and show as a new workshop post!)
|        |--data.txt
|        |--slides.pdf
|
|--static (static files and images to link to. Non posts/events [linkto](/filename)) 
|  |--img
|  |  |--rstudio (R studio screenshots)
|  |--materials
|  |  |--DS Certificate, syllabi, 
|  |--event[formerly known as workshops]
|  |--post
|  |  |--folders containing files (like images) that may be associated with a post

---
