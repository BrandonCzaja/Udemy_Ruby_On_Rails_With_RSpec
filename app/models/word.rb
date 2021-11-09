class Word < ApplicationRecord
    # Returns boolean if a value is present for a word. Must adjust specs in spec/models/word_spec for this or tests will fail
    validates :content, :language, presence: true
end
