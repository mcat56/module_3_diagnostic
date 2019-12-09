class OrderMembers

  def initialize(house)
    @house = house
  end

  def get_order_members
    service = OrderMembersService.new
    members_json = service.get_members(@house)

    members = members_json.map do |member|
      Member.new(member)
    end

    members.select {|member| member.order_of_phoenix == true }

  end

  def member_count
    get_order_members.length
  end


end
