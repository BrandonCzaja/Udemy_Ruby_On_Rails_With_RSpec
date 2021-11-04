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

  describe 'GET new' do
    before {get :new}
    it 'assigns @word' do
      expect(assigns(:word)).to be_a_new(Word) 
    end

    it 'renders the New route template' do
      expect(response).to render_template(:new)
    end
  end

  describe 'POST method' do
    subject {post :create, params: params }
    let(:params) do
      {word: {value: 'bird', language: 'english'}}
    end

    # Checking that the word is added to params, not the DB
    it 'creates a new word' do
      # binding.pry
      expect{subject}.to change(Word, :count).from(0).to(1)
    end
  
  end 
end