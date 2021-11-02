require 'rails_helper'

RSpec.describe WordsController, type: :controller do
  describe "GET index" do
    before {get :index}
    context 'when some words are present' do
      # By adding the bang(!) I create :word on line 8, not when it is called on line 11
      # The word is present in the DB before it tested
      let!(:word) {create(:word)} 
      it 'assigns @words' do
        expect(assigns(:words)).to eq([word])
      end
  end

  context 'when no words are present' do
    it 'assigns @words' do
      expect(assigns(:words)).to eq([])
    end
  end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end
  end
end