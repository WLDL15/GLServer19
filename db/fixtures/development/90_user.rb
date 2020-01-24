# -*- coding: utf-8 -*-

10.times do |n| 
  User.seed_once(:email) do |s|
    s.name = Faker::Name.name
    s.email = "example-#{n+1}@railstutorial.org"
    s.password = "password"
    s.password_confirmation = "password"
    s.last_login_date = Time.mktime(1970, 1, 1, 0, 0, 0)
  end
end
