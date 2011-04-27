# Unnamed Theme

# Prerequisites

* Movable Type Pro

Required plugins:

* [Theme Manager](https://github.com/openmelody/mt-plugin-theme-manager/downloads)
* [Config Assistant](https://github.com/openmelody/mt-plugin-configassistant/downloads)
* [Categories By Date](https://github.com/danwolfgang/mt-plugin-categories-by-date)
* [More Custom Fields](https://github.com/danwolfgang/mt-plugin-more-custom-fields/downloads)
* [Peak Categories](https://github.com/jayseae/MT-PeakCategories/downloads)
* [PreviousNextinCategory]()
* [SubCatCount](http://www.everitz.com/mt/subcatcount/)
* [Widget Set CF](https://github.com/endevver/mt-plugin-cf-widgetset)

Optional, but useful plugins:

* [Default Category](https://github.com/danwolfgang/mt-plugin-default-category/downloads)
* [Hot Date](https://github.com/danwolfgang/mt-plugin-hot-date/downloads)
* [Facebook Commenters](https://github.com/endevver/mt-plugin-facebook-connect-commenters/downloads)
* [Post Office](https://github.com/movabletype/mt-plugin-post-office/downloads)

# Getting Started

Create blog(s) and specify the Config Directives, then visit the main blog's
documentation for more details on set up (found at Design > Theme Dashboard >
Documentation).

## Create Blogs

Create a new blog with the "Custom Theme Pack (Blog)" template set.
Optionally, also create a new blog with the "Custom Theme Pack (Photo
Gallery)" template set.

## Config Directives

Add the following config directives to `mt-config.cgi`:

    MainBlogID [blog ID]
    PhotoGalleryBlogID [blog ID]

The `PhotoGalleryBlogID` is optional, and is only needed if you've created a
photo gallery blog. Of course, `[blog ID]` should be replace with the ID of
the blog.


# License

This plugin is licensed under the GPLv2.
