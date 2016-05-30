class Stat < ActiveRecord::Base
  attr_accessor :id, :goals, :assists, :points, :plus_minus, :goal_adv, :goal_des, :goal_win, :pun, :shot, :pourc_shot, :blocked_shot, :hits, :turnover, :turnover_for, :win_faceoff, :pourc_faceoff, :avg_time
  belongs_to :player
end
