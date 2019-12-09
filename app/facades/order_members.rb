class OrderMembers

  def get_order_members
    service = OrderMembersService.new
    @members = service.order_members_json(house)

    @members.map do |member|
      Member.new(member)
    end 
  end

end
