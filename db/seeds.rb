# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Tax.create(name: 'GST')
Tax.create(name: 'HST')
Tax.create(name: 'PST')
Tax.create(name: 'QST')

Province.create(name: 'Alberta')
Province.create(name: 'British Columbia')
Province.create(name: 'Manitoba')
Province.create(name: 'New-Brunswick')
Province.create(name: 'Newfoundland and Labrador')
Province.create(name: 'Northwest Territories')
Province.create(name: 'Nova Scotia')
Province.create(name: 'Nunavut')
Province.create(name: 'Ontario')
Province.create(name: 'Prince Edward Island')
Province.create(name: 'Québec')
Province.create(name: 'Saskachewan')
Province.create(name: 'Yukon')

Category.create(name: 'Book')
Category.create(name: 'Miniature')
Category.create(name: 'Tea')
Category.create(name: 'Tea Accessories')