require 'rails_helper'

RSpec.describe 'IU', type: :feature do
  let!(:solver) { Solver.new(count: 10, every: 5) }


  before do
    visit new_solver_path
  end

  it 'can see the page' do
    expect(page).to have_content('Which soldier must die')
  end

  it 'the number of the embroidered soldier' do
    fill_in 'Count', with: '10'
    fill_in 'Every', with: '5'
    click_button 'Submit'
    expect(page).to have_content('The operation was successful')
    expect(page).to have_content('Answer: 2')
  end 
end