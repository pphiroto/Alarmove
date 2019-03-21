class HomeController < ApplicationController
   before_action :getAlarm


   def setting
   end

   def decision
      @alarm.id = 1
      @alarm.hour = params[:hour]
      @alarm.minute = params[:minute]
      @alarm.ampm = params[:ampm]
      @alarm.save
      redirect_to("/home/sleeping")
   end

   def sleeping
   end

   def getup
   end

   def checkAlarm
      now = Time.new

      if now.hour<=11
         ampm = "1"
      else
         ampm = "2"
      end

      if now.hour == @alarm.hour && now.min == @alarm.minute && ampm == @alarm.ampm
         redirect_to("/home/getup")
      end
   end

   helper_method :checkAlarm

end
