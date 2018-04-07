---
title: 'Getting Started with Python & Jupyter Notebooks'
author: 'Grant Esparza'
slug: setup_python
description: '04-05-18 Workshop materials'
---


# Materials

* [Workshop slides](/event/setup_python/python_presentation.pdf)
* [Python Notebook version of slides](/event/setup_python/Python for Windows 10.ipynb)

# Post workshop updates

Grant led us through how to install Python3 on Windows and OSX using CLI (Command Line Interface). This is a great approach for those who want to get more comfortable with using the command line. For Mac users, the entire process came down to installing 3 programs: homebrew, python3, and jupyter. That is because it's built on a Unix system. Windows however does not (yet?) natively have any way to interact with Unix. That is the focus of Grant's talk, is to walk Windows users through the process of getting Unix, setting permissions, then finally getting the programs. 

**Recall our goal is to get Jupyter Notebook.** This is the IDE (Integrated Development Environment) that we will use to write and compile Python Code. This is completely analogous to RMarkdown files in R Studio. In fact Jupyter developed the concept of a notebook first!

For windows users who don't have root permissions (i.e. a work computer) there is an alternative approach using the [Anaconda Platform](www.anaconda.com/what-is-anaconda/). 

![/event/setup_python/anaconda_logo.png](https://www.anaconda.com/distribution)

The Anaconda Distribution provides Data Scientists with a ready-to-use sandbox for you to play in that can be downloaded and installed in a few clicks. The programs and libraries that come with Anaconda distribution may be overkill for some users. It provides a "get all the things and use what you need" approach instead of a "customize your setup to get only what you need when you need it" approach to building your sandbox. And for some of us, that's perfectly fine. 

### Installing Anaconda

1. Download Anaconda by clicking on the image above or going to https://www.anaconda.com/distribution. Install as typical. 
2. Go to your Start menu and find Anaconda. You'll see several programs are available to you - click on **Jupyter Notebook**. 

![/event/setup_python/start_menu.png]()

3. A terminal window will pop up. This is starting a _kernel_ or the core program that will start up a browser window from which you can interact with the Jupyter Notebook. This window needs to stay open in the background, it's running the server that is hosting the notebook you're going to use. It will look something like this (it may take a few seconds for the text to appear and for the browser window to pop up.)

![/event/setup_python/kernel.png]()


From here you can either 

* start a new notebook by clicking `New` in the upper right corner and choosing `Python3`
* navigate the file system to find a `*.ipynb` (iPython Notebook) file to open
* Upload a `*.ipynb` file, and then click to open. Try it using [[Grant's slides!]](/event/setup_python/Python for Windows 10.ipynb)


### You're ready to start learning Python!

Next week (4/12/18) Edward Roualdes will walk us through [using Python for Exploratory Data Analysis](https://csudsi.netlify.com/2018/04/05/2018-04-06-intro-python/). If you want to get started before then here are some resources and tutorials that you can check out. _Disclaimer: most have not been tested out for quality. Contact us if there are any that turn out not to be good or if you want us to include the awesome one you wrote!_

* Lynda https://www.lynda.com/Python-training-tutorials/415-0.html (Chico State Faculty/Staff have a subscription)
* Data Camp https://www.datacamp.com/courses/intro-to-python-for-data-science 
* How to run code in a notebook: https://nbviewer.jupyter.org/github/jupyter/notebook/blob/master/docs/source/examples/Notebook/Running%20Code.ipynb
    - This was found on a gallery of interesting Jupyter Notebooks: https://github.com/jupyter/jupyter/wiki/A-gallery-of-interesting-Jupyter-Notebooks 
* Tutorial that also uses Anaconda, published on 4/4/18 so very up to date: https://www.dataquest.io/blog/jupyter-notebook-tutorial/ 
* edX course from Microsoft: https://www.edx.org/course/introduction-to-python-absolute-beginner 
* User documentation from `readthedocs` - looks to be quite heavy on configuration and security. May not be helpful for newbies.  https://jupyter-notebook.readthedocs.io/en/stable/index.html 





