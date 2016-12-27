class NoticesController < ApplicationController
  def index
    @notices = Notice.all
  end
  def new
    
  end

  def create

  end
end
