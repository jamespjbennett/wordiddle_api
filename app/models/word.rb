require 'uri'
require 'net/http'

class Word < ApplicationRecord

  def self.validate_existence(word)
    uri = URI("https://api.dictionaryapi.dev/api/v2/entries/en/#{word}")
    res = Net::HTTP.get_response(uri)
    JSON.parse(res.body).is_a?(Array)
  end

  def mark_as_used
    update(used:true, used_on: Date.today)
  end
end
