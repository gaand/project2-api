# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Location.delete_all

%w(and dna dan nda).each do |name|
  email = '#{name}@#{name}.com'
  next if User.exists? email: email
  User.create!(email: email, password: 'abc123',
               password_confirmation: 'abc123')
end

User.create!([
  { email: 'elinore_whitla@email.com', password: 'pw1', password_confirmation: 'pw1' },
  { email: 'brunhilda_fernandez@email.com', password: 'pw2', password_confirmation: 'pw2' },
  { email: 'cari_mcnamara@email.com', password: 'pw3', password_confirmation: 'pw3' },
  { email: 'carmen_delossa@email.com', password: 'pw4', password_confirmation: 'pw4' },
  { email: 'kissiah_sullivan@email.com', password: 'pw5', password_confirmation: 'pw5' }
])

Location.create! ([
  { city: 'Birmingham', state: 'AL', region: 'South' }
])
