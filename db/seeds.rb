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

EmploymentPattern.create(:name => '正社員')
EmploymentPattern.create(:name => '契約社員')
EmploymentPattern.create(:name => 'アルバイト・パート')

5.times do |i|
  i += 1
  user = User.create(
    email: "user#{i}@example.com",
    password: 'password9'
  )
  user.save!

  client = Client.create(
    email: "user#{i}@example.com",
    password: 'password9'
  )
  client.save!
end

5.times do |i|
  5.times do |j|
    Scout.create(summary: "hey#{i}-#{j}}", user_id: i, client_id: j)
  end
end
