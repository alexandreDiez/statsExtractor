require 'logger'

class Log
  def self.log
    if @logger.nil?
      file = File.new('C:/Source Ruby/Objectifs/Objectif 2016/stats_scrapper/log/log.txt','w')
      @logger = Logger.new file
      @logger.level = Logger::DEBUG
      @logger.datetime_format = '%Y-%m-%d %H:%M:%S '
    end
    @logger
  end
end