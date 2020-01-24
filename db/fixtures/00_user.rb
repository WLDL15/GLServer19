# -*- coding: utf-8 -*-

User.seed_once(:email) do |s|
    s.name = "Admin"
    s.email = "example@railstutorial.org"
    s.password = "foobar"
    s.password_confirmation = "foobar"
    s.last_login_date = Time.mktime(1970, 1, 1, 0, 0, 0)
    s.admin = true
end