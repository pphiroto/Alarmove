class ApplicationController < ActionController::Base

	def getAlarm
		if Alarm.exists? then
			@alarm = Alarm.find_by(id:1)
		else
			@alarm = Alarm.new(id:1)
		end
	end
	
end
