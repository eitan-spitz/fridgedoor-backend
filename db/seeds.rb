# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Family.destroy_all
UserFamily.destroy_all
Fridge.destroy_all
Shoppinglist.destroy_all
Item.destroy_all
FridgeItem.destroy_all
ShoppingItem.destroy_all

user1 = User.create(username: "bob", password: "bob")
user2 = User.create(username: "beth", password: "beth")
user3 = User.create(username: "bart", password: "bart")

fam1 = Family.create(name: "Smith", password: "smith")
fam2 = Family.create(name: "Parker", password: "parker")

user_fam1 = UserFamily.create(user_id: user1.id, family_id: fam1.id)
user_fam2 = UserFamily.create(user_id: user2.id, family_id: fam2.id)
user_fam3 = UserFamily.create(user_id: user3.id, family_id: fam1.id)
user_fam4 = UserFamily.create(user_id: user3.id, family_id: fam2.id)

fridge1 = Fridge.create(name: "kitchen", family_id: fam1.id)
fridge2 = Fridge.create(name: "Garage", family_id: fam1.id)

shoppinglist1 = Shoppinglist.create(name: "Groceries", family_id: fam1.id)
shoppinglist2 = Shoppinglist.create(name: "garth", family_id: fam2.id)

item1 = Item.create(fdc_id: 566821, fdc_description: "CHEESE", data_type: "Branded")
item2 = Item.create(fdc_id: 575437, fdc_description: "APPLE", data_type: "Branded")
item3 = Item.create(fdc_id: 506463, fdc_description: "MILK", data_type: "Branded")
item4 = Item.create(fdc_id: 508576, fdc_description: "AVOCADO", data_type: "Branded")
item5 = Item.create(fdc_id: 357068, fdc_description: "EGGS", data_type: "Branded")

TYPES = ["Cup", "Gram", "Kilo", "Liter", "Unit"]

fi1 = FridgeItem.create(fridge_id: fridge1.id, item_id: item1.id, amount_num: rand(5..15), amount_type: TYPES.sample)
fi2 = FridgeItem.create(fridge_id: fridge1.id, item_id: item2.id, amount_num: rand(5..15), amount_type: TYPES.sample)
fi3 = FridgeItem.create(fridge_id: fridge1.id, item_id: item3.id, amount_num: rand(5..15), amount_type: TYPES.sample)
fi4 = FridgeItem.create(fridge_id: fridge1.id, item_id: item4.id, amount_num: rand(5..15), amount_type: TYPES.sample)
fi5 = FridgeItem.create(fridge_id: fridge1.id, item_id: item5.id, amount_num: rand(5..15), amount_type: TYPES.sample)

fi6 = FridgeItem.create(fridge_id: fridge2.id, item_id: item2.id, amount_num: rand(5..15), amount_type: TYPES.sample)
fi7 = FridgeItem.create(fridge_id: fridge2.id, item_id: item3.id, amount_num: rand(5..15), amount_type: TYPES.sample)
fi8 = FridgeItem.create(fridge_id: fridge2.id, item_id: item4.id, amount_num: rand(5..15), amount_type: TYPES.sample)

si1 = ShoppingItem.create(shoppinglist_id: shoppinglist1.id, item_id: item1.id, amount_num: rand(5..15), amount_type: TYPES.sample)
si2 = ShoppingItem.create(shoppinglist_id: shoppinglist1.id, item_id: item2.id, amount_num: rand(5..15), amount_type: TYPES.sample)
si3 = ShoppingItem.create(shoppinglist_id: shoppinglist1.id, item_id: item3.id, amount_num: rand(5..15), amount_type: TYPES.sample)
si4 = ShoppingItem.create(shoppinglist_id: shoppinglist1.id, item_id: item4.id, amount_num: rand(5..15), amount_type: TYPES.sample)
si5 = ShoppingItem.create(shoppinglist_id: shoppinglist1.id, item_id: item5.id, amount_num: rand(5..15), amount_type: TYPES.sample)

si6 = ShoppingItem.create(shoppinglist_id: shoppinglist2.id, item_id: item2.id, amount_num: rand(5..15), amount_type: TYPES.sample)
si7 = ShoppingItem.create(shoppinglist_id: shoppinglist2.id, item_id: item3.id, amount_num: rand(5..15), amount_type: TYPES.sample)
si8 = ShoppingItem.create(shoppinglist_id: shoppinglist2.id, item_id: item4.id, amount_num: rand(5..15), amount_type: TYPES.sample)