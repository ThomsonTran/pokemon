# README

* Ruby version  
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a)

* Database  
run `rails db:migrate`  
seed with `rails db:seed`

* CRUD  

| Verb | URI Pattern    | Action |
| - | - | - |
|GET    |/monsters(.:format)|                                                                               monsters#index|
|POST   |/monsters(.:format) |                                                                              monsters#create|
|PATCH  |/monsters/:id(.:format)|                                                                           monsters#update|
|PUT    |/monsters/:id(.:format) |                                                                          monsters#update|
|DELETE |/monsters/:id(.:format)  |                                                                         monsters#destroy|

* Viewing pagination

Pass page value in query string. 100 pokemon per page

monsters?page=0  
monsters?page=1  
monsters?page=2  
monsters?page=3  
monsters?page=4  



