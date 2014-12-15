module CatarsePagarme
  class Engine < ::Rails::Engine
    isolate_namespace CatarsePagarme

    config.to_prepare do
      ::Backer.send(:include, CatarsePagarme::ContributionConcern)
      ::CreditCard.send(:include, CatarsePagarme::CreditCardConcern)
    end
  end
end
