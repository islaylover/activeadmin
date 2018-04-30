# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
User.create!(nickname: 'kaizar', gender: 1, memo: '初期管理者', admin_flg: 1, delete_flg: 1, created_at: 'NOW()', updated_at: 'NOW()',  email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
