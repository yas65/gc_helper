module GoogleCalendarHelper
  GOOGLE_CAL_URL = "http://www.google.com/calendar"
  ACTION = "event"
  def google_calendar_link(link_name,title,from,to,sprop,options={})
    link_to link_name,"#{GOOGLE_CAL_URL}/#{ACTION}?action=TEMPLATE&text=test&dates=20120615T010000Z/20120615T030000Z&details=&location=t&trp=false&sprop=&sprop=name:"
  end
end

ActionView::Base.class_eval do
  include GoogleCalendarHelper
end