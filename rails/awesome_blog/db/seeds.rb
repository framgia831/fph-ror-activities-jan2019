50.times do |n|
    User.create(
    name: Faker::Movies::HarryPotter.character,
    email: "rails#{n+1}@email.com",
    password: "password"
    )
end

users = User.take(5)

20.times do |n|
    text = Faker::JapaneseMedia::OnePiece.quote

    users.each do |user|
        user.microposts.create(content: text)
    end
end



