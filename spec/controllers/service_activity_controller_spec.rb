require 'spec_helper'

describe ServiceActivityController do
  describe '#index' do
    it 'assigns all service activities' do
      ServiceActivity.should_receive(:all).and_return 'does not matter'

      get :index, :team => 'test_team'

      expect(assigns :activity).to eq('does not matter')
    end
  end
end
