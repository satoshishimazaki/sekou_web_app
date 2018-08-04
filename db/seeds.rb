# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8
Domain.create(:name => '測量')
Domain.create(:name => '設計')
Domain.create(:name => '総合土木')

Qualification.create(:name => '測量士資格')
Qualification.create(:name => '測量士補資格')
Qualification.create(:name => '一級建築士資格')
Qualification.create(:name => '二級建築士資格')

JobObjective.create(:name => '測量士')
JobObjective.create(:name => '測量士補')
JobObjective.create(:name => 'ドローン操縦士')
JobObjective.create(:name => 'CADオペレーター')
JobObjective.create(:name => '建築士')
JobObjective.create(:name => '施工管理士')


# 5.times do |i|
#   i += 1
#   User.create(
#     email: "user#{i}@example.com",
#     password: 'password9'
#   )
#
#   Client.create(
#     email: "user#{i}@example.com",
#     password: 'password9'
#   )
#
#   EmployeeAccount.create(
#     last_name: "satshi#{i}",
#     user_id: i
#   )
#
#   ClientAccount.create(
#     name: "zielson#{i}",
#     client_id: i
#   )
# end
#
#
# 5.times do |i|
#   i += 1
#   EmployeeAccount.create(
#     last_name: "satshi#{i}",
#     user_id: i
#   )
# end
#
# Scout.create(summary: 'hey1', employee_account_id: 1, client_account_id: 1)
# Scout.create(summary: 'hey2', employee_account_id: 2, client_account_id: 2)
# Scout.create(summary: 'hey3', employee_account_id: 3, client_account_id: 3)
# Scout.create(summary: 'hey4', employee_account_id: 4, client_account_id: 4)
# Scout.create(summary: 'hey5', employee_account_id: 5, client_account_id: 5)
