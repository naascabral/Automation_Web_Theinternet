# encoding: utf-8
# !/usr/bin/env ruby
require 'site_prism'

module Desafio
    module Pages
        class LoginPage < SitePrism::Page
            element :loginpage, '#content > ul > li:nth-child(18) > a'
            element :username, 'input[name=username]'
            element :password, 'input[name=password]'
            element :btnlogin, '#login > button > i'
            element :btnlogout, '#content > div > a'
          
            def login (user,pass)
               username.set user
               password.set pass
               btnlogin
            end
    
        end
    end
end

