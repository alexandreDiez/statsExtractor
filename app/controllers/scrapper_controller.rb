class ScrapperController < ApplicationController
  require 'mechanize'

  def extract
    mechanize = Mechanize.new

    page = mechanize.get('http://www.nhl.com/stats/player?reportType=season&report=skatersummary&season=20152016&gameType=2&sort=points&aggregate=0&pos=S')

    @titre = page.title
    Log.log.info @titre

   # Log.log.info  page.search('//*[@class="stats"]')

  end
end
