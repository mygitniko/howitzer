require_relative 'home_page'

module AbbottPlate
  class DashboardPage < WebPage
    validates :url, pattern: /#{settings.app_url}Home\/BarChart$/

    def self.open(url="#{settings.app_url}Home/BarChart")
      super
    end

  end
end