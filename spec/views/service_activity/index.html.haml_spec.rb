require 'spec_helper'

describe 'service_activity/index.html.haml' do
  it 'displays the service activity' do
    assign :activity, [
      stub_model(
        ServiceActivity,
        :service => 'Test Service',
        :payload => 'Test Payload',
        :created_at => 1.day.ago,
      )
    ]

    render

    rendered.should have_content('Test Service')
    rendered.should have_content('Test Payload')
    rendered.should have_content('1 day ago')
  end
end
