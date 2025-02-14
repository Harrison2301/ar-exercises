require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

SurreyStore= Store.create(name: "Surrey", annual_revenue: "224000", mens_apparel: false, womens_apparel: true)
WhistlerStore = Store.create(name: "Whistler", annual_revenue: "1900000", mens_apparel: true, womens_apparel: false)
YaletownStore = Store.create(name: "Yaletown", annual_revenue: "430000", mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)

@mens_stores.each do |item|
    puts "#{item.name} #{item.annual_revenue}"
end

@womens_stores = Store.where(womens_apparel: true, annual_revenue: 0..1000000)

@womens_stores.each do |item|
    puts "#{item.name} #{item.annual_revenue}"
end
 