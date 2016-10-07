module ConektaDashboard
  class Charge
    def initialize(model)
      @model = model
    end

    def id
      @model['id']
    end

    def created_at
      Time.at(@model['created_at']).strftime('%d/%b/%y %H:%M')
    end

    def type
      case @model['payment_method']['object']
      when 'card_payment'
        'Tarjeta'
      when 'cash_payment'
        'Efectivo'
      when 'bank_transfer_payment'
        'Banco'
      end
    end

    def status
      case @model['status']
      when 'pending_payment'
        @model['failure_message'].nil? ? 'Pendiente' : 'Declinado'
      when 'paid'
        'Pagado'
      when 'charged_back'
        'Contracargo'
      when 'refunded', 'partially_refunded'
        'Rembolsado'
      end
    end

    def message
      case @model['status']
      when 'paid'
        "Pagado exitosamente - #{payment_method}"
      when 'pending_payment'
        @model['failure_message'] || 'Pago pendiente por realizar'
      when 'refunded'
        'Se ha realizado un reembolso parcial del cargo'
      when 'partially_refunded'
        'Se ha realizado un reembolso parcial del cargo'
      end
    end

    def amount
      Money.new(@model['amount'], @model['currency']).format
    end

    def cart_type
      return unless @model['payment_method']['object'] == 'card_payment'
      case @model['payment_method']['type']
      when 'credit'
        'Crédito'
      when 'debit'
        'Débito'
      end
    end

    def payment_method
      case @model['payment_method']['object']
      when 'card_payment'
        @model['payment_method']['brand'].upcase
      when 'cash_payment'
        @model['payment_method']['type'].upcase
      when 'bank_transfer_payment'
        @model['payment_method']['type'].upcase
      end
    end
  end
end
