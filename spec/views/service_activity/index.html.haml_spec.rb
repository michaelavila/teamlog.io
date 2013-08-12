require 'spec_helper'

describe 'service_activity/index.html.haml' do
  it 'displays the service activity' do
    assign :activity, [
      stub_model(
        ServiceActivity,
        :service => 'basic',
        :payload => 'does not matter',
        :created_at => 1.day.ago,
      )
    ]

    render

    render.should have_content('Updated 1 day ago')
  end
end
