require 'rails_helper'

describe 'As a user I can search order members by house' do
  it 'displays member information' do

    visit '/'

    select 'Gryffindor'. from: :house

    click_button 'Search For Members'

    expect(current_path).to eq('/search')

    expect(page).to have_content('Order Members: 21')

  end
end 
