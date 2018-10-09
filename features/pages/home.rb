# encoding: utf-8
# !/usr/bin/env ruby
require 'site_prism'

module Desafio
  module Sections
    class Content < SitePrism::Section
      element :page, '#content > ul > li:nth-child(18) > a'
    end 
  end
  module Pages
    class HomePage < SitePrism::Page
      set_url '/'
      section :content, Desafio::Sections::Content, '#content'
    end
  end
end
