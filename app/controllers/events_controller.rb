class EventsController < ApplicationController
  #before_action :authenticate_user!, only: [:index]
  def index
    @events = current_user.events
  end
end
