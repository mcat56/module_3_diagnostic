class SearchController < ApplicationController

  def index
    binding.pry
    @members = OrderMembers.get_order_members(params[:house])
  end


end
