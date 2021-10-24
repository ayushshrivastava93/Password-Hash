require_relative 'crud'

users = [
{username: "Ayush", password: "pass1"},
{username: "Aashu", password: "pass2"},
{username:"Amit", password: "pass3"},
{username: "Ishu", password: "pass4"},
{username: "Krishna",password: "pass5"}
]

hashed_user = Crud.secure_user_hash()
puts hashed_user