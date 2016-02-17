class EventsController < ApplicationController
  def index
    @events = Event.all.reverse
  end
end
