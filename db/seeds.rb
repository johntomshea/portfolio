# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
puts "eradicated"
puts "seeding new life (...and new civilizations!)"

excel_string = 'John  3.5
Lars  3
Hudson  3
Qi  3
Aaron 2.5
Felix 2.5
Raoul 2.5
Miguel  2.5
Victor  2.5
Tim 2.5
Rodion  2.5
Gordy 2
Andy  2
Hutch 2
Eric  2
Gene  2
Nikita  2
Radu  2
JoseR 2
Marco 2
Will  2
Ricardo 2
Cher  2
Anderson  1.7
Agu 1.5
Kun 1.5
Adam  1.5
Chenzi  1.3
Eileen  1.5
JoseQ 1.3
Jason 1.5
Thorben 1.5
Andreas 1.5
Kwaki 1.3
Helios  1.1
Nicolas 1.1
David 1
Kayla 1
Randall 1
Kate  1
Marcos  1
Christine 1
Fan 1
Toni  1
Daniel  1
Jerrod  1
Aron  1
Ben 1
Tammy 0.9
Florian 0.9
Viki  0.8
Zara  0.8
Aggy  0.8
Denis 0.7
Gigi  0.5
Brenda  0.5
Lu  0
Tracy 0
Francesca -0.5
Emma  -0.5
Uliana  -0.5
Julia -0.5'

split_array = excel_string.split(/\n/)
new_split_array = split_array.map do |array|
  array.split(" ")
end

player_hashes = new_split_array.map{|name, war| { "name": name, "war": war }}


player_hashes.each do |hash|
  Player.create!(
    name: hash[:name],
    war: hash[:war]
    )
end


puts "created #{Player.count} players"
