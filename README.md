# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
=======================
Notes :

1. User model :
A User has many albums

2. Album

2 A) Default albums -
a) Timeline Photos (for posts / photos uploaded from desktop without assigning the posts to any album)
b) Mobile Uploads (for posts / photos uploaded from mobile without assigning the posts to any album)
c) Cover photos (for photos uploaded as cover photo)

2 B) User defined album -
User creates a new album with a title

3. Post

A post belongs to a album. It is either assigned to a default album or to user defined album

4. Photo

A photo belongs to a post

===================
Phase 1 :

Scope :

1. Pages :
Show pages created by user.
Show "Your Pages" tab from facebook
Show the page names and page image thumbnail
Likes, comments, page views etc metrics not to be shown now
Clicking on the page title redirects to page's home page

2. Photos :

The link should redirect to the page "Photos of you"
Two tabs to be displayed "Photos of you" and "Albums"
"Photos of you" :
Photos to be shown in a grid.  Clicking on albums does not redirect to photo for now

"Albums"
Albums to be shown in a grid. Clicking on albums does not redirect to album for now

3. News Feed :

Show all post of logged in user with photo / photos and text.
This is basic css. not much effort for css to be put now.

4. Pages :

List all pages created by the logged in user.
The list has link to the pages. Clicking on the link redirects to the Facebook Page's show page.
Show page has page title and page image displayed. No cover image for now

5. User profile
Basic user information. No other links to be shown on the user profile page for now

Phase 2 :

After the chat application is completed work on showing likes, comments and including more functionality in the existing four sidebar links(eg. news feed, events, pages, photos)

===================

Plan :

1. Rails - show 4 tabs with basic implementation in rails with rspec and capybara
2. Bootstrap - basic
3. React js - include react js
4. Chat application - rails 5 action cable
5. Phase 2 - work on implementations of phase 2