require "unirest"

system "clear"

puts "Choose an option"
puts "[1] Show one contact"
puts "[2] Show all contacts"

input_choice = gets.chomp

if input_choice == "1"
  response = Unirest.get("http://localhost:3000/one_contact_url")
  contact = response.body
  puts JSON.pretty_generate(contact)
elsif input_choice == "2"
  response = Unirest.get("http://localhost:3000/all_contacts_url")
  contacts = response.body
  puts JSON.pretty_generate(contacts)
else
  puts "Unknown option"
end
