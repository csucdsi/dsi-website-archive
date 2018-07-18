# Website for the Chico State Data Science Initative

https://datascience.csuchico.edu 

# todo
* Update theme to fix post author bug
* build workshop schedule 
    - display as a calendar
* link to RUG and Google L-serv


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




```


## Random comments 
* Bottom of every announcement [Workshop Details & Materials](/workshop/stat-models-brief/)
* In RMD refrences to data/files `read.table(topic_stuff/data.txt)`

