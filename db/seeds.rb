# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wishlist.delete_all
Item.delete_all
PopularToy.delete_all

Wishlist.create(title: 'Christmas', user_id: 1)

Wishlist.create(title: 'Christmas', user_id: 1)

Wishlist.create(title: 'Birthday', user_id: 1)

Wishlist.create(title: 'Birthday', user_id: 2)
#christmas:
Item.create(item_name: 'rubix', description: 'square', wishlist_id: 29)
Item.create(item_name: 'rubber duck', description: 'pink', wishlist_id: 29)
#birthday
Item.create(item_name: 'model car', description: 'shiney', wishlist_id: 30)
Item.create(item_name: 'pony', description: 'white', wishlist_id: 30)

PopularToy.create(name: 'Star Wars Lego')
PopularToy.create(name: 'Rainbow Loom')
PopularToy.create(name: 'hex bugs')
PopularToy.create(name: 'Minecraft')
PopularToy.create(name: 'Kid Galaxy')
