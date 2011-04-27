The Roster Blog Theme Setup and Use Instructions

Setup
=====
 1. Install MT and upload this plugin, as well as other required plugins:
    - Config Assistant
    - Facebook Commenters (1.1.1 or later)
    - PostOffice
    - PreviousNextInCategory
    - WidgetSetCF

 2. Create two new blogs with the theme: Blog and In Action. Blog can be named 
    anything; In Action must be named In Action.

 3. Create the primary user of the system.

 4. Note the IDs of the two blogs; add config directives to mt-config.cgi:
    MainBlogID [blog ID]
    InActionBlogID [blog ID]
    PrimaryAuthorName [primary author username]

    These config directives are used throughout the two blogs to ensure that 
    links point to the correct location. They are turned into variables at the 
    start of the Global: Header template.

 5. In Global Templates, update the System Templates to use their "Global: " 
    counterparts. Each named template gets replaced with an include. (Template 
    Sets can't override the global system templates, so this has to be done by 
    hand.)
    <mt:Include module="Global: Login Form">
    <mt:Include module="Global: Password Reset Form">
    <mt:Include module="Global: Profile Edit Form">
    <mt:Include module="Global: Profile View">
    <mt:Include module="Global: Registration Confirmation">
    <mt:Include module="Global: Registration Form">

 6. In the main blog, visit Design > Theme Options. Fill in this info as necessary:
    - Header Image URL is required.
    - Header Accent Image URL is optional. Use it to place an arbitrary image in the 
      site header; otherwise In Action photos will be displayed there.

    All other fields are intelligently ignored if empty.

 7. Set up PostOffice.
 
 8. Set up a Facebook Connect app.

 9. Republish.


Use
===
Action Streams
--------------
  Action Streams are used to list the Twitter feed, and to create the Game On 
  links section.
  
  Click the author's name in the upper-right, then choose Other Profiles to 
  add additional profiles.

Main Blog
---------
Entries:
  - Make an entry appear in the Featured Articles widget by including the 
    @featuredarticle tag. The five most-recent entries with the 
    @featuredarticle tag will be displayed in this widget.
  - Make an entry appear in the Featured Video widget by including the 
    @featuredvideo tag. Only the most recent entry tagged @featuredvideo will 
    be displayed here. The widget displays the contents of the EntryExcerpt 
    field, so you will want to enter the HTML to a reduced-size video here, to 
    fit the sidebar width. The sidebar width is 202 pixels.

Pages:
  - Add a Contact page: go to Create > Page and add a page as desired. Give it 
    the @contact tag. This tag is responsible for adding a link in the 
    navigation header and footer links in the site.
  - Add an About page. Give it the @about tag; which adds it to the navigation 
    header and footer links. Use H2 HTML tags to delineate sections, which 
    will then appear in the Highlights sidebar widget.
  - Add any other pages. By default, they are not linked anywhere or to 
    anything. Manually link to them from other pages, or add them to the 
    footer (with the @footernav tag) or the header (@headernav).

  After adding any pages with @about, @contact, @footernav, or @headernav, the 
  site must be republished to update all pages.

In Action
---------
Entries:
  - Insert an image asset into an entry. An Entry Title is required, as is a 
    category/gallery name.
  - The four header images displayed site-wide are pulled from this section. 
    The four most-recent photos are displayed here.
  - The In Action sidebar widget is created from this section. After the four 
    most recent, the next nine photos are displayed in this widget.

Pages:
  Are unused here.

Default Category:
  - Set a default category to be used (if none is specified) by first creating 
    a Category (in Manage > Categories) then going to Tools > Plugins > Default
    Category > Settings. Pick a category and save.
