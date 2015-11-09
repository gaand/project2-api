# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

%w(and dna dan nda).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email, password: 'abc123',
               password_confirmation: 'abc123')
end

User.create!([{email: "elinore_whitla@email.com", password: 'pw', password_confirmation: 'pw'}])
    # {email: "brunhilda_fernandez@email.com", token: , password_digest: },
    # {email: "cari_mcnamara@email.com", token: , password_digest: },
    # {email: "carmen_delossa@email.com", token: , password_digest: },
    # {email: "kissiah_sullivan@email.com", token: , password_digest: },
    # {email: "noelyn_eisenberg@email.com", token: , password_digest: },
    # {email: "martina_familiari@email.com", token: , password_digest: },
    # {email: "cathleen_odle@email.com", token: , password_digest: },
    # {email: "fanchette_glegg@email.com", token: , password_digest: },
    # {email: "sandy_abbratozzato@email.com", token: , password_digest: }
#  ])
