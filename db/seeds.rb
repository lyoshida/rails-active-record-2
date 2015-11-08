# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fiorina = User.create(username: 'Fiorina', password_digest: '123')
trump = User.create(username: 'Trump', password_digest: '123')
carson = User.create(username: 'Carson', password_digest: '123')
clinton = User.create(username: 'Clinton', password_digest: '123')

fiorina.profile = Profile.create(gender: 'female', first_name: 'Carly', last_name: 'Fiorina', birth_year: 1954)
trump.profile = Profile.create(gender: 'male', first_name: 'Donald', last_name: 'Trump', birth_year: 1946)
carson.profile = Profile.create(gender: 'male', first_name: 'Ben', last_name: 'Carson', birth_year: 1951)
clinton.profile = Profile.create(gender: 'female', first_name: 'Hillary', last_name: 'Clinton', birth_year: 1947)

fiorina_todo = TodoList.create(list_name: 'todo list', list_due_date: Date.today + 1.year, user: fiorina)
trump_todo = TodoList.create(list_name: 'todo list', list_due_date: Date.today + 1.year, user: trump)
carson_todo = TodoList.create(list_name: 'todo list', list_due_date: Date.today + 1.year, user: carson)
clinton_todo = TodoList.create(list_name: 'todo list', list_due_date: Date.today + 1.year, user: clinton)

TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: fiorina_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: fiorina_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: fiorina_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: fiorina_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: fiorina_todo)

TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: trump_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: trump_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: trump_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: trump_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: trump_todo)

TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: carson_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: carson_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: carson_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: carson_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: carson_todo)

TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: clinton_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: clinton_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: clinton_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: clinton_todo)
TodoItem.create(due_date: Date.today + 1.year, title: 'item', description: 'description', todo_list: clinton_todo)
