# Blog site for the Chico State Data Science Initative

https://datascience.csuchico.edu 

[![Netlify Status](https://api.netlify.com/api/v1/badges/9464522b-b3ed-4a12-ad15-9ed2db315244/deploy-status)](https://app.netlify.com/sites/csudsi/deploys)


# NOTE
* if you clean the site, you delete the public folder. You then have to re-render ALL posts on the next build.			- Don't do this


# todo

- [x] enable mathjax to work [soln?](https://github.com/devcows/hugo-universal-theme/pull/153) 
       -idk if this was done or if it's still an issue. 
- [ ] figure out copyright -- what was this about? cc-by or something? 

    
# Instructions for a new post

It is not difficult to make a new post, so long as a few details are satisfied. See the folder `content/blog/` for examples.

1. Git clone this repository, or pull updates if you've already cloned it previously, and start a new branch.  Please create a new branch for each post.

    ```git clone git@github.com:csucdsi/dsi-website.git``` or ```git pull```

    ```git checkout -b your-unique-branch-name```

2. Your file, which contains your post, should be put in the folder `content/blog/` and named as `year-month-day-filename.ext`.  Year should be a four digit number, and both month and day should be two digit numbers.  The file extension can be either Rmd or md. 

    I find it easier to build an md file myself (usually locally), since otherwise you have to convince the machine (could be your machine, my machine, or some cloud server) that builds this site, and hence your Rmd file, to have all your packages already installed.

3. The meta data at the top of the file should include at least, title, author, and date.  Good extras to include are categories, tags, slug, and banner.  

    The title will be in UPPERCASE, not just Capitalized.  Think of the slug as a unique identifier.  For the most part, this site uses png files for the banner.  You should create a file and put it in `static/img/`, until we get some reasonable default images.

4. Build the site locally using the R package `blogdown`.  From a command line, `cd` into this repositories root directory `dsi-website`, start an R session, load the library `blogdown`, and run ``blogdown::serve_site()``.

5. Review, edit, and fix to your hearts content.  For reasons unknown, you may need to call ``blogdown::stop_site()`` and ``blogdown::serve_site()`` a few times while you update things.

6. Add, commit, and push your branch back up.  Please don't `git add .` or `git add -A .`.  You may need to use `git push --set-upstream origin your-unique-branch-name` to push your new branch the first time.

7. Go to this repositories website and create a Pull Request, asking for someone to review your post.  

8. If your review has any comments, address them.  Then push your branch back up.


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

```

---

# Images
Theme images that i can't figure out how to change w/o changing the original file. 
These are located at `\themes\hugo-universal-theme\static\img\` 

* Landing page banner: `fixed-background-2.jpg`
* Grey background on blog posts: `texture-bw.png`


