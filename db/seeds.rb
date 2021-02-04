# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Family.destroy_all
UserFamily.destroy_all
Fridge.destroy_all
Shoppinglist.destroy_all

user1 = User.create(username: "bob", password: "bob")
user2 = User.create(username: "beth", password: "beth")
user3 = User.create(username: "bart", password: "bart")

fam1 = Family.create(name: "smith", password: "smith")
fam2 = Family.create(name: "parker", password: "parker")

user_fam1 = UserFamily.create(user_id: user1.id, family_id: fam1.id)
user_fam2 = UserFamily.create(user_id: user2.id, family_id: fam2.id)
user_fam3 = UserFamily.create(user_id: user3.id, family_id: fam1.id)
user_fam4 = UserFamily.create(user_id: user3.id, family_id: fam2.id)

fridge1 = Fridge.create(name: "kitchen", family_id: fam1.id)
fridge2 = Fridge.create(name: "kieth", family_id: fam2.id)

shoppinglist1 = Shoppinglist.create(name: "groceries", family_id: fam1.id)
shoppinglist2 = Shoppinglist.create(name: "garth", family_id: fam2.id)