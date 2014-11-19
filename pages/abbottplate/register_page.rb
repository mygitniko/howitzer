require_relative 'home_page'

module AbbottPlate
  class RegisterPage < WebPage
    validates :url, pattern: /#{settings.app_url}\/Home\/ChildDetail$/

    def self.open(url="#{settings.app_url}Home/ChildDetail")
      super
    end

  end
end