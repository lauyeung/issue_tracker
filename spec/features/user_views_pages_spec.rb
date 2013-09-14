require 'spec_helper'



describe 'Sidebar contents change with action', :type => feature do

  it 'displays general stats on the index page' do
    visit "/issues"
    expect(page).to have_content "Issue Statistics"
  end

  it 'displays info about the event on the show page' do
    c = Category.create(name: "Bug")
    i = Issue.create(:title => "Oops", :description => "It's broken", :category_id => c.id, :severity => "Low")
    visit "/issues/#{i.id}"
    expect(page).to have_content "About this Issue"
  end

end
