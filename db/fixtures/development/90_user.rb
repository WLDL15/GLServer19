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

User.seed_once(:id,
  { id: 12, name: '川端智哉', email: 'e1c16033@is.oit.ac.jp', password: 'password', password_confirmation: 'password', admin: true, last_login_date: Time.mktime(1970, 1, 1, 0, 0, 0)},
  { id: 13, name: '木下慧士', email: 'e1c16036@is.oit.ac.jp', password: 'password', password_confirmation: 'password', last_login_date: Time.mktime(1970, 1, 1, 0, 0, 0)},
  { id: 14, name: '桐原健', email: 'e1c16039@is.oit.ac.jp', password: 'password', password_confirmation: 'password', last_login_date: Time.mktime(1970, 1, 1, 0, 0, 0)},
  { id: 15, name: '皿井千尋', email: 'e1c16050@is.oit.ac.jp', password: 'password', password_confirmation: 'password', last_login_date: Time.mktime(1970, 1, 1, 0, 0, 0)},
  { id: 16, name: '島侑作', email: 'e1c16052@is.oit.ac.jp', password: 'password', password_confirmation: 'password', last_login_date: Time.mktime(1970, 1, 1, 0, 0, 0)},
  { id: 17, name: '溝端啓之', email: 'e1c16092@is.oit.ac.jp', password: 'password', password_confirmation: 'password', last_login_date: Time.mktime(1970, 1, 1, 0, 0, 0)},
  { id: 18, name: '山本鉄平', email: 'e1c16103@is.oit.ac.jp', password: 'password', password_confirmation: 'password', admin: true, last_login_date: Time.mktime(1970, 1, 1, 0, 0, 0)},
  { id: 19, name: '吉川直希', email: 'e1c16104@is.oit.ac.jp', password: 'password', password_confirmation: 'password', last_login_date: Time.mktime(1970, 1, 1, 0, 0, 0)},
  { id: 20, name: '若勇諄', email: 'e1c16105@is.oit.ac.jp', password: 'password', password_confirmation: 'password', admin: true, last_login_date: Time.mktime(1970, 1, 1, 0, 0, 0)}
)
