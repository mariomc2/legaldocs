# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r1 = Role.create({name: "Regular", description: "Can read and create items. Can update and destroy own items"})
r2 = Role.create({name: "Checker", description: "Can read/check items."})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})

u1 = User.create({name: "Customer 1", email: "c1@reg.com", password: "aaaaaa", password_confirmation: "aaaaaa", role_id: r1.id})
u2 = User.create({name: "Customer 2", email: "c2@reg.com", password: "aaaaaa", password_confirmation: "aaaaaa", role_id: r1.id})
u3 = User.create({name: "Checker 1", email: "ch1@ch.com", password: "aaaaaa", password_confirmation: "aaaaaa", role_id: r2.id})
u4 = User.create({name: "Admin 1", email: "a1@admin.com", password: "aaaaaa", password_confirmation: "aaaaaa", role_id: r3.id})

i1 = Item.create({name: "Orden 1 - C1", description: "Orden por Documento", price: 99.99, user_id: u1.id})
i2 = Item.create({name: "Orden 1 - C2", description: "Orden por Documento", price: 199.99, user_id: u2.id})
i3 = Item.create({name: "Orden 2 - C2", description: "Orden por Documento", price: 299.99, user_id: u2.id})
i4 = Item.create({name: "Orden 2 - C1", description: "Orden por Documento", price: 399.99, user_id: u1.id})

t1 = Template.create({name: "Plantilla 1", description: "Documento Legal 1", price: 99.99, form: "Acá se necesita un texto HTML con una forma que describa la Plantilla 1"})