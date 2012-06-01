require 'spec_helper'

describe GoogleCalendarHelper do
  before(:all) do
    @t = ActionView::Base.new
  end
  it "should return google calendar link" do
    p @t.google_calendar_link("Add To Google Calender","Test",Time.now,Time.now,"website:www.fast-d.com").html_safe
  end
end