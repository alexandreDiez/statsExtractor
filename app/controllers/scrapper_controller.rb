class ScrapperController < ApplicationController
  require 'mechanize'

  def extract
    mechanize = Mechanize.new

    page = mechanize.get('http://stackoverflow.com/')

    @titre = page.title
  end
end
