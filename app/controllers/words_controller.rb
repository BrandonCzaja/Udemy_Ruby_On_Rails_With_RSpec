class WordsController < ApplicationController
    def index
        @words = Word.all
    end

    def new
        @word = Word.new
    end

    def show
        @word = Word.find(params[:id])
    end

    def create
        # binding.pry
        @word = Word.new(word_params)
        if @word.save
            redirect_to(words_path)
        else
            render :new
        end
    end

    private 

    def word_params
        params.require(:word).permit(:content, :language)
    end
end