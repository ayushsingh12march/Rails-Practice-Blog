# README

* rails new <aplication_name>
* rails generate controller Welcome index - Welcome controller created with welcome/index.html.erb
* root 'welcome#index' creates welcome controller index methor rendering as root
* rails routes -  can view all the routes
* rails generate model Article title:string text:text
* rails generate model Comment commenter:string body:text article: reference

class Comment < ApplicationRecord
  belongs_to :article
end


*
