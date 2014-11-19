module AbbottPlate
  class HomePage < WebPage
  	
    #validates :title, pattern: /^Abbott Singapore$/
    validates :url, pattern: /#{settings.app_url}$/

    def self.open(url="#{settings.app_url}")
      super
    end

  end
end