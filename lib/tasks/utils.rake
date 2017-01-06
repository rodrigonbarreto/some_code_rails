namespace :utils do
  
  desc "Populate database"
  task seed: :environment do
    puts "(Contacts)..."
      100.times do |i|
        Contact.create!( 
          name: Faker::Name.name,
          email: Faker::Internet.email,
          kind: Kind.all.sample,
          rmk:  Faker::Lorem.paragraphs(rand(2..4))
        )
      end
    puts "(Contacts)... [OK]"
    
    puts "(Addresses)..."
      Contact.all.each do |contact|
        Address.create!(
          street: Faker::Address.street_address,
          city: Faker::Address.city,
          state: Faker::Address.state_abbr,
          contact: contact
        )
      end
    puts "(Addresses)... [OK]"
    
    puts "Gerando os telefones (Phones)..."
      Contact.all.each do |contact|
        Random.rand(1..5).times do |i|
          Phone.create!(
            phone: Faker::PhoneNumber.phone_number,
            contact: contact
          )
        end
      end
    puts "Gerando os telefones (Phones)... [OK]"
  end

end
