puts "🌱 Seeding spices..."

# Seed your database here
# data for the users 
User.create(
    user_name:"Polly",
    first_name:"Pauline",
    last_name:"Muthoni",
    email:"pau@gmail.com",
    password:"P123"
)
User.create(
    user_name:"Mwangeka",
    first_name:"Ruth",
    last_name:"Muluki",
    email:"muluki@gmail.com",
    password:"M123"
)
User.create(
    user_name:"Jay",
    first_name:"James",
    last_name:"Njenga",
    email:"njenga@gmail.com",
    password:"N123"
)
User.create(user_name:"Kib",first_name:"Mureithi",last_name:"Kibata", email:"mk@gmail.com",password:"K123")
User.create(user_name:"Sin",first_name:"Isaac",last_name:"Sindiga",email:"is@gmail.com", password:"S123"
)

# Items data

Item.create(name:"Bread",quantity:"10 loaves",price:80,description:"Good bread")
Item.create(name:"Milk",quantity:"2pks",price:50,description:"cool milk")
Item.create(name:"Sugar",quantity:"2kgs",price:70,description:"white sugar")
Item.create(name:"Tissue",quantity:"5rolls",price:250,description:"2ply")
Item.create(name:"Tealeaves",quantity:"500gms",price:200,description:"fine kenyan tea")

#Shopping Lists Data
ShoppingList.create(list_name:"Monday",user_id:2,item_id:1)
ShoppingList.create(list_name:"Tuesday",user_id:3,item_id:3)



puts "✅ Done seeding!"
