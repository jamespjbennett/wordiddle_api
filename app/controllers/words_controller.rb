class WordsController < ApplicationController

  def sample
    word = Word.where(used:nil).sample
    word.mark_as_used unless just_testing
    render json: word.as_json
  end

  def check
    valid_word = Word.validate_existence(word)
    render json: {valid: valid_word}
  end

  private


  def just_testing
    params["testing"].present?
  end

  def word
    params["word"]
  end

end
