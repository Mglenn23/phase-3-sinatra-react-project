puts "🌱 Seeding spices..."

# Seed your database here
User.destroy_all
Type.destroy_all
Card.destroy_all
Leaderboards.destroy_all

User.create(user_name: "Admin23", user_password:"123",user_role:"admin")
User.create(user_name: "User23", user_password:"qwe",user_role:"user")
User.create(user_name: "mic33", user_password:"1234",user_role:"admin")

Type.create(type_name:"Water",type_img:"https://iili.io/UU3bUb.png")
Type.create(type_name:"Fire",type_img:"https://iili.io/UUFKqF.png")
Type.create(type_name:"Earth",type_img:"https://iili.io/UUFf0g.png")
Type.create(type_name:"Air",type_img:"https://iili.io/UUFhru.png")

Card.create(
      card_name: "Muna",
      card_attack: 1000,
      card_defense: 2000,
      type_id: 2,
      user_id: 1
    )
    Card.create(
      card_name: "Kilop",
      card_attack: 2000,
      card_defense: 2000,
      type_id: 2,
      user_id: 1
    )
    Card.create(
      card_name: "Zaka",
      card_attack: 4000,
      card_defense: 2000,
      type_id: 1,
      user_id: 1
    )
    Card.create(
      card_name: "Joji",
      card_attack: 1000,
      card_defense: 2000,
      type_id: 4,
      user_id: 1
    )
    Card.create(
      card_name: "Zoro",
      card_attack: 2000,
      card_defense: 2000,
      type_id: 3,
      user_id: 1
    )
puts "✅ Done seeding!"
