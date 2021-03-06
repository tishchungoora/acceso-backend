require 'csv'

# Clean up old seed data

BoardCard.destroy_all
Board.destroy_all
Card.destroy_all
Category.destroy_all
Behaviour.destroy_all
User.destroy_all

puts "Pre-existing data cleared"

# Load cards with categories. Assign corresponding parent categories

table = CSV.parse(File.read('./db/pecs.csv'), headers: true)

table.each do |row|
    title = row[0]
    description = row[1]
    image_url = row[2]
    parent_category = Category.find_or_create_by(name: row[5], description: row[6])
    subcategory = Category.find_or_create_by(name: row[3], description: row[4])
    Category.update(subcategory.id, :parent_id => parent_category.id)
    
    Card.create(title: title, description: description, image_url: image_url, category: subcategory)
end

puts "Cards created with category information"
puts "Parent categories created"
puts "Child-parent relationships created for categories"

# load behaviours

behaviours = [
    {name: "Routine", description: "Positive and non-challenging behaviour."},
    {name: "Anxiety", description: "State of mind arising as a result of loss of patience, difficulty concentrating, difficulty sleeping, depression or becoming preoccupied with or obsessive about a subject."},
    {name: "Challenging", description: "Meltdowns, self-injurious behaviour such as biting, spitting, hitting and hair pulling, pica, smearing, etc."},
]

behaviours.each do |behaviour|
    Behaviour.create(behaviour)
end

puts "Behaviours created"

# load test users

users = [
    {first_name: "J", last_name: "Doe", email: "j.doe@gmail.com", password: "833Fw.U7*KsM"},
    {first_name: "John", last_name: "Doe", email: "john.doe@gmail.com", password: "password"},
    {first_name: "Jane", last_name: "Doe", email: "jane.doe@gmail.com", password: "password"},
]

users.each do |user|
    User.create(user)
end

puts "Test users created"