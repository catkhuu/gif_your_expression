module Giphy_Parser

  def retrieve_gif(input)
    api_endpoint = "http://api.giphy.com/v1/gifs/random"
    api_key = "dc6zaTOxFJmzC"
    query = input.to_s
    params = { "tag"=> query, "api_key"=> api_key }
    response = Unirest.get(api_endpoint, headers: {}, parameters: params)
    gif = response.body["data"]
  end

  def retrieve_keys(input)
    gif_response = retrieve_gif(input)
    key_matchers = ["url", "image_original_url", "image_width", "image_height"]
    values = key_matchers.map { |key| gif_response[key] }
    Hash[*key_matchers.zip(values).flatten]
  end
end

  helpers Giphy_Parser
