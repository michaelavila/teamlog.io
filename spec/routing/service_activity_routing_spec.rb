require 'spec_helper'

describe ServiceActivityController do
  describe 'routing' do
    it 'routes /:team to service_activity#index' do
      get('/test_team/').should route_to(
        'service_activity#index',
        :team => 'test_team',
      )
    end
  end
end
