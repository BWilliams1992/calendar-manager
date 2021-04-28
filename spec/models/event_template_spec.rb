require 'rails_helper'

RSpec.describe EventTemplate, type: :model do
  before do 
    @event_template = create(:event_template)
  end
  describe 'An Event Template' do
    context 'with valid attributes' do
      it 'is valid' do
        expect(@event_template).to be_valid
      end
    end
  end
end
