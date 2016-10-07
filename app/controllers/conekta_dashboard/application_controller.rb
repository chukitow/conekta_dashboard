module ConektaDashboard
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_filter :set_private_key

    def set_private_key
      Conekta.api_key = ConektaDashboard.api_private_key
    end
  end
end
