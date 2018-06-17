# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Account.find_by(name: 'Just Mobile Direct').blank?
  just_mobile_account = Account.create!(name: 'Just Mobile Direct', members_count: 6)
  just_mobile_account.offices.create!(building_name: '428 Broadway', floor_number: 5, desks_count: 6)
end

if Account.find_by(name: 'Associated Luxury Hotels International').blank?
  associated_luxury_account = Account.create!(name: 'Associated Luxury Hotels International', members_count: 20)
  associated_luxury_account.offices.create!(building_name: 'White House', floor_number: 9, desks_count: 20)
end