require 'rails_helper'

describe 'As a user I can search order members by house' do
  it 'displays member information' do

    visit '/'

    select 'Gryffindor', from: :house

    click_button 'Search For Members'

    expect(current_path).to eq('/search')

    expect(page).to have_content('Order Members: 21')

    within '.members' do
      expect(page).to have_css('#member-0')
      expect(page).to have_css('#member-20')
    end

    within '#member-0' do
      expect(page).to have_content('Name: Sirius Black')
      expect(page).to have_content('House: Gryffindor')
      expect(page).to_not have_content('Role')
      expect(page).to_not have_content('Patronus')
    end 
  end
end
