# encoding: utf-8
# !/usr/bin/env ruby
require 'site_prism'

module Desafio
    module Pages
        class TablePage < SitePrism::Page
            element :tablepage, '#content > ul > li:nth-child(36) > a'
            element :edit, '#table1 > tbody > tr:nth-child(3) > td:nth-child(6) > a:nth-child(1)'          
            element :lastname, 'input[name=lastname]'
            element :delete, '#table1 > tbody > tr:nth-child(1) > td:nth-child(6) > a:nth-child(2)'
            
            def table (name)
                lastname.set name
            end
        end
    end
end

