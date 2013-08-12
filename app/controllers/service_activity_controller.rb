class ServiceActivityController < ApplicationController
  def index
    @activity = ServiceActivity.all
  end
end
