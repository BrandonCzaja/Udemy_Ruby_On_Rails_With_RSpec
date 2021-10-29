require 'rails_helper'

RSpec.describe Word, type: :model do
  describe 'columns' do
    it {is_expected.to have_db_column(:value)}
    it {is_expected.to have_db_column(:language)}
  end

  # Added because of the validation in models/word.rb
  describe 'validations' do
    it {is_expected.to validate_presence_of(:value)}
    it {is_expected.to validate_presence_of(:language)}
  end
end
