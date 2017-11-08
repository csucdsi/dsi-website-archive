# Website for the Chico State Data Science Initative

https://datascience.csuchico.edu 

# todo
2. redirect custom url - redirect works, but netlify domain still shows. 
3. blog post about R class
4. build workshop schedule 
    - eventually into google calendar
    - that has a link somewhere or is on a static page
5. link to RUG and Google L-serv


# File org & post order
```
.
|--index.Rmd (just used to call `serve.site()`)
|--README.md (this file)
|--dsi_website.Rproj (R project file)
|--config.toml (site configuration file)
| 
|--content
|  |--page (static pages)
|     |--about.md
|     |--contact.md
|     |--courses.md
|     |--people.md
|  |--post
|     |--YYYY-MM-DD_topic_announce.md (slug = topic_stuff)
|  |--workshop  
|     |--YYYY-MM-DD_topic.Rmd (slug = topic_stuff)
|     |--topic_stuff (--WARNING--: *MD files in here will be rendered and show as a new workshop post!)
|        |--data.txt
|        |--slides.pdf
|
|--static (static files and images to link to. Non posts/workshops [linkto](/filename))
|  |--img
|  |  |--rstudio (R studio screenshots)
|  |--materials
|  |  |--DS Certificate, syllabi, 
|  |--workshop



```


## Random comments 
* Bottom of every announcement [Workshop Details & Materials](/workshop/stat-models-brief/)
* In RMD refrences to data/files `read.table(topic_stuff/data.txt)`

