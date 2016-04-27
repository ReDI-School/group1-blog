# Blog app

## First setup
In terminal:
```
git clone https://github.com/ReDI-School/group1-blog.git
cd group1-blog
bundle install
bundle exec rake db:migrate
bundle exec rake db:seed
rails server
```

## Stages
* v0.1 - Post model, Post controller, show and index views
* v0.2 - Add new view and logic to create a new post
* v0.3 - Edit posts, input validation, delete posts
* v0.4 - Two column layout for new post page
* v0.5 - Add comments to posts
