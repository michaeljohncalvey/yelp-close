require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'belongs to relationship' do

    it 'should have many restaurants' do
      u = User.reflect_on_association(:restaurants)
      expect(u.macro).to eq :has_many
    end

    it 'should have many reviews' do
      u = User.reflect_on_association(:reviews)
      expect(u.macro).to eq :has_many
    end

  end
end
