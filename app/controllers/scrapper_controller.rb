class ScrapperController < ApplicationController
  require 'nokogiri'
  require 'open-uri'

  def extract

    # page =
    # div
    # pos = nil



    pageStats = Nokogiri::HTML(open('http://www.rds.ca/hockey/lnh/statistiques/onglet/joueurs'))

    @pagePlayer = Nokogiri::HTML(open('http://www.rds.ca/hockey/lnh/joueurs/landingpage/Subject/jamie-benn-14.9176'))

    @titre = pageStats.css('title')

    @info_player = @pagePlayer.css('//*[@class="player-stats margin-top-15 margin-bottom-15 clearfix"][1]/li')

    @infos = []
    @info_player.each do |i|
      info = get_text_node(i, ':')
      @infos << info
    end

    rows = pageStats.css('//*[@class="stats-table-body"]/tr')
    #ind_stats =  (3..18).to_a.push(0)

    playerInfo = {:name => 0, :position => 3, :gamePlayed => 4, :goals  => 5, :assists => 6, :points => 7, :plusMinus  => 8, :goalPp => 9,
                  :goalDes => 10, :goalWin => 11, :minPun => 12, :shots => 13, :percShot => 14, :bloquedShot => 15, :hits => 16, :turnover => 17, :turnover_for => 18}

    @final = []
    rows.each do |r|
      @info = []
      r.css('td').each_with_index do |td, index|
        if playerInfo.value?(index)
          # TODO Création de l'objet
          # key = playerInfo.key(index)
          @info << get_text_node(td)
        end
      end
      @final << @info
    end
  end
end
