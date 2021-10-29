require 'rails_helper'

RSpec.describe WordsController, type: :controller do
  describe "GET index" do
    context 'when some words are present' do
      it 'assigns @words' do
        # Have to add value or validation causes test to fail
        word = Word.create(value: 'cat', language: 'english')
        get :index
        expect(assigns(:words)).to eq([word])
      end
  end

  context 'when no words are present' do
    it 'assigns @words' do
      get :index
      expect(assigns(:words)).to eq([])
    end
  end

    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end
end