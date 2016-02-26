class EventsController < ApplicationController
  def index
      @calevents = Calevent.all
  end

end
