User.create(
    name: "Hani", 
    email: "inahsanjuan@gmail.com",
    password: "password"
)

# Users
50.times do |n|
    User.create(
    name: Faker::Movies::HarryPotter.character,
    email: "rails#{n+1}@email.com",
    password: "password"
    )
end

# Microposts
users = User.take(5)

20.times do |n|
    text = Faker::JapaneseMedia::OnePiece.quote

    users.each do |user|
        user.microposts.create(content: text)
    end
end

# Follow data
user = User.first
followers = User.all

followers[2..50].each do |follower|
    follower.follow(user)
end

followers[40..50].each do |follower|
    user.follow(follower)
end