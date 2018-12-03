require 'faraday'
require 'json'

class Connection
  BASE = 'https://api.figma.com/v1/'

  def self.api
    Faraday.new(url: BASE) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
      faraday.headers['X-Figma-Token'] = '5541-9f352a3f-acc0-4e75-aa54-7585476d9441'
    end
  end
end
