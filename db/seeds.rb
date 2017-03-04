# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create name: 'José', status: :active, kind: :user, email: 'example@gmail.com'
User.create name: 'Filipe', status: :active, kind: :manager, email: 'filipwx7@gmail.com'
User.create name: 'Ortega', status: :active, kind: :other, email: 'leatutz@gmail.com'
