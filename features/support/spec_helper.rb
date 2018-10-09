# encoding: utf-8
# !/usr/bin/env ruby

Dir[File.join(File.dirname(__FILE__), '../pages/*.rb')].each { |file| require file }

module Desafio
  module Pages
    def home
      Desafio::Pages::HomePage.new
    end
    def login
      Desafio::Pages::LoginPage.new
    end
    def table
      Desafio::Pages::TablePage.new
    end
  end
end
