require 'conekta'
require 'sprockets/rails'
require 'jquery-rails'
require 'bootstrap-sass'
require 'money'
require "conekta_dashboard/engine"

module ConektaDashboard
 class << self
    mattr_accessor :api_private_key
  end

  def self.setup(&block)
    yield self
   end
end
