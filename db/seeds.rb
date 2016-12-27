# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Category.destroy_all

# Clients
puts "Creating Clients..."

ricardo = User.create!( email:'ricardofuruta@yahoo.com.br', password: '1', password_confirmation: '1', admin: true)
joicy = User.create!( email:'joicycostaalves@yahoo.com.br', password: '1', password_confirmation: '1', admin: true)
rafael = User.create!(email:"rafaelfuruta@yahoo.com.br", password: "1", password_confirmation: "1")

# Categories
puts "Creating categories..."


cursos = Category.new(
  name:'Cursos',
  description: "Desenvolva técnicas avançadas e torne-se um mestre na confeitaria.",
 )
cursos.photo = Rails.root.join('app/assets/images/joicy.jpg').open
cursos.save!

bolos = Category.new(
  name:'Bolos',
  description: "Os mais deliciosos bolos da cidade irão fazer da sua festa um sucesso.",
 )
bolos.photo = Rails.root.join('app/assets/images/bolokitkat.jpg').open
bolos.save!

brigadeiros = Category.new(
  name:'Brigadeiros',
  description: "O melhor brigadeiro de Curitiba em dez sabores que irão encantar você e todos os seus convidados."
 )
brigadeiros.photo = Rails.root.join('app/assets/images/photogrid.jpg').open
brigadeiros.save!

# Products
puts "Creating Products..."

product1 = Product.new({name:'Bolo Kit Kat', description: 'Bolo coberto de Kit Kat com recheio de brigadeiro', price: 85.00, category: bolos})
product1.save!
photo_bolo1 = ProductPhoto.new(product: product1)
photo_bolo1.photo = Rails.root.join('app/assets/images/bolokitkat2.jpg').open
photo_bolo2 = ProductPhoto.new(product: product1)
photo_bolo2.photo = Rails.root.join('app/assets/images/bolokitkat3.jpg').open
photo_bolo3 = ProductPhoto.new(product: product1)
photo_bolo3.photo = Rails.root.join('app/assets/images/bolokitkat.jpg').open
photo_bolo1.save!
photo_bolo2.save!
photo_bolo3.save!

product2 = Product.new({name:'Bolo de Chocolate', description: 'Bolo coberto de granulado, com massa de chocolate e recheio de brigadeiro meio amargo', price: 60.00, category: bolos})
product2.save!
photo_bolo4 = ProductPhoto.new(product: product2)
photo_bolo4.photo = Rails.root.join('app/assets/images/bolochocolate.jpg').open
photo_bolo4.save!

product3 = Product.new({name:'Bolo Colorido', description: 'Bolo com confeito colorido, massa de baunilha e recheio de doce de leite.', price: 50.00, category: bolos})
product3.save!
photo_bolo5 = ProductPhoto.new(product: product3)
photo_bolo5.photo = Rails.root.join('app/assets/images/bolocolorido.jpg').open
photo_bolo5.save!

product4 = Product.new({
  name:'Caixa com 100 Brigadeiros',
  description: 'Escolha até cinco sabores diferentes de brigadeiro e monte sua caixa',
  price: 199.00,
  category: brigadeiros
  })
product4.save!
photo_brigadeiro1 = ProductPhoto.new(
  product: product4,
  )
photo_brigadeiro1..photo = Rails.root.join('app/assets/images/photogrid.jpg').open

product5 = Product.new({
  name:'Curso de Confeitaria Básico',
  description: 'Aprenda os conceitos Básicos da Confeitaria.',
  price: 199.00,
  category: cursos
  })
product5.save!
photo_curso1 = ProductPhoto.new(
  product: product5,
  )
photo_curso1.photo = Rails.root.join('app/assets/images/curso.jpg').open
