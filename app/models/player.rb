class Player < ActiveRecord::Base
  has_one :stat

  def initialiaze( param = {} )
    param.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end

end
