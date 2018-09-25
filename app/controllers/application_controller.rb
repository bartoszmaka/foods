class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def random_hex_color
    red = rand(16..255).to_s(16)
    green = rand(16..255).to_s(16)
    blue = rand(16..255).to_s(16)
    "##{red}#{green}#{blue}"
  end
  helper_method :random_hex_color
end
