class SearchController < ApplicationController


  def index
    @facade = OrderMembers.new(params[:house])
  end

end
