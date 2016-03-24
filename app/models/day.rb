# day.rb

class Day < ActiveRecord::Base
  ## attr_accessor ## method?
  belongs_to :user

  ## execute in controllers
  # def self.days_to(date)
  #   user_date = date
  #   today_date = DateTime.now

  #   if user_date > today_date
  #     @days_to = user_date - today_date
  #   else
  #     @days_to = today_date - user_date
  #   end

  #   @days_to = @days_to.to_i / 86400  ## dividing by 86400 because result returning in seconds

  # end #closes days_to method


  ## execute in views
  def days_to(date)
    user_date = date
    today_date = DateTime.now

    if user_date > today_date
      @days_to = user_date - today_date
    else
      @days_to = today_date - user_date
    end

    @days_to = @days_to.to_i / 86400  ## dividing by 86400 because result returning in seconds

  end #closes days_to method

  # def parse_date(date)
  #   user_date = date.to_s
  #   user_date = DateTime.strptime(user_date, "%mm/%dd/%Y")

  # end


end #closes Day class