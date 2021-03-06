namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts 'Cadastrando os contatos'
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(45.years.ago, 18.years.ago)
      )
    end
    puts 'Cadastrado com sucesso'
  end

end
