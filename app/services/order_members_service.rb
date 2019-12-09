class OrderMembersService


  def get_members(house)
    resp = Faraday.get("https://www.potterapi.com/v1/characters?house=#{house}&key=$2a$10$giTw6rHKVb8293Dt0/6um.GY6/Azg3U5yVLMxUbGQvTT0C7Wk4BPi")
    JSON.parse(resp.body)
  end



end
