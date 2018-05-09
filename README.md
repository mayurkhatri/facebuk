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