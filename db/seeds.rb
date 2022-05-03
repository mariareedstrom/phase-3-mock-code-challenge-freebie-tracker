puts "Removing old data"
Company.delete_all
Freebie.delete_all
Dev.delete_all

puts "Creating companies..."

c1 = Company.create(name: "Google", founding_year: 1998)
c2 = Company.create(name: "Facebook", founding_year: 2004)
c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."

d1 = Dev.create(name: "Rick")
d2 = Dev.create(name: "Morty")
d3 = Dev.create(name: "Mr. Meseeks")
d4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "MousePad", value: 10, company: c1.id, dev: d1.id)
Freebie.create(item_name: "WaterBottle", value: 5, company: c2.id, dev: d2.id)
Freebie.create(item_name: "KeyChain", value: 2, company: c2.id, dev: d3.id)
Freebie.create(item_name: "Pen", value: 1 , company: c4.id, dev: d4.id)
Freebie.create(item_name: "Notepad", value: 7, company: c4.id, dev: d1.id)
Freebie.create(item_name: "Book", value: 20, company: c2.id, dev: d1.id)
puts "Seeding done!"
