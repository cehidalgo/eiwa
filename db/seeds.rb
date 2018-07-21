# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Category.create(name: "Test", user_id: 1, popularity: 0)
Category.create(name: "Tecnology", user_id: 1, popularity: 0)
Category.create(name: "Music", user_id: 1, popularity: 0)
Category.create(name: "Design", user_id: 1, popularity: 0)
Category.create(name: "Art", user_id: 1, popularity: 0)
Category.create(name: "Internet", user_id: 1, popularity: 0)

Post.create(title: "It's just a test post!", context: "Hi, just sayin' it's a test, guyz. Pls calm down!", category_id: 1, random_picked: 0, user_id: 1)

Tag.create(post_id: 1, name: "test", popularity: 0)
Tag.create(post_id: 1, name: "test of a tag", popularity: 0)
Tag.create(post_id: 1, name: "tecnology", popularity: 0)
