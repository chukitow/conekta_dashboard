module ConektaDashboard
  class ChargesController < ConektaDashboard::ApplicationController
    def index
      @charges = Conekta::Charge.all.map { |c| ConektaDashboard::Charge.new(c[1]) }
    end
  end
end
