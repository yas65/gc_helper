module GoogleCalendarHelper
  GOOGLE_CAL_URL = "http://www.google.com/calendar"
  ACTION = "event"
  def google_calendar_link(link_name,title,from,to,options={})
    location = options[:location] ? options[:location] : ""
    details = options[:details] ? options[:details] : ""
    if from.respond_to? :strftime
      if to.respond_to? :strftime
        dates = "#{from.strftime("%Y%m%dT%H%M%SZ")}/#{to.strftime("%Y%m%dT%H%M%SZ")}"
      else
        dates = "#{from.strftime("%Y%m%dT%H%M%SZ")}/#{from.strftime("%Y%m%dT%H%M%SZ")}"
      end
    else
      dates = ''
    end
    link_to link_name,"#{GOOGLE_CAL_URL}/#{ACTION}?action=TEMPLATE&text=#{title}&dates=#{dates}&details=#{details}&location=#{location}&trp=false&sprop=&sprop=name:"
  end
end

ActionView::Base.class_eval do
  include GoogleCalendarHelper
end