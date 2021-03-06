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

AddressType.create(name: 'Billing')
AddressType.create(name: 'Shipping')
AddressType.create(name: 'Both')

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
Category.create(name: 'Game Accessories')
Category.create(name: 'Tea')
Category.create(name: 'Tea Accessories')

About.create(name: 'Tumblers & Tomes Support',
             email: 'support@tumblersandtomes.ca',
             description: 'Tumblers & Tomes was founded back 2015 as a small
                           shop in Transcona that specializes in selling teas,
                           tea accessories and tabletop roleplaying games. The
                           company has 5 different locations spread across
                           Winnipeg, as well as locations in Brandon,
                           Steinbach and Kenora, with over 25,000
                           employees currently working for us as of today.')