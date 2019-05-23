require 'rails_helper'

RSpec.describe 'IU', type: :feature do
  let!(:solver) { create :solver, count: 10, every: 7 }


  before do
    visit new_solver_path
  end

  it 'can see the page' do
    expect(page).to have_content('Which soldier must die')
  end

  it 'the number of the embroidered soldier' do
    fill_in 'Count', with: '10'
    fill_in 'Every', with: '7'
    click_button 'Submit'
    # expect(page).to have_content('The operation was successful')
    expect(page).to have_content('Answer: 4')
  end 
end