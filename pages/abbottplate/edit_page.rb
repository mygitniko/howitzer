require_relative 'home_page'

module AbbottPlate
  class EditPage < WebPage
    validates :url, pattern: /#{settings.app_url}Home\/BarChart$/

    add_link_locator		:add,					"add-quantity"

    def self.open(url="#{settings.app_url}Home/BarChart")
      super
    end

    def wait_for_ajax
        Timeout.timeout(10) do
          loop until finished_all_ajax_requests?
        end
    end

    def finished_all_ajax_requests?
        loop until page.evaluate_script('jQuery.active')
        page.evaluate_script('jQuery.active').zero?
    end

    def click_breakfast
        page.evaluate_script('$(document).ready(function(){})')
        find(:xpath, "//a[@id='pop-breakfast']").click
    end

    def click_lunch
        wait_for_ajax
    	find(:xpath, "//a[@id='pop-lunch']").click
    end

    def click_dinner
        wait_for_ajax
    	find(:xpath, "//a[@id='pop-dinner']").click
    end

    def click_snacks
        wait_for_ajax
    	find(:xpath, "//a[@id='pop-snack']").click
    end

    def click_kinds_of_foods
        wait_for_ajax
    	find(:xpath ,"//div[@id='first-row-pop-wp']//a[1]").click
    end

    def click_foods
        wait_for_ajax
    	find(:xpath, "//div[@class='bx-viewport']//ul[1]//li[4]//a").click
    end

    def click_add
        wait_for_ajax
    	click_link(link_locator(:add))
    end

    def click_edit
        wait_for_ajax
    	first(:css,".span9.collapse.in").first("a").click
    end

    def click_arrow
        wait_for_ajax
    	first(:css,".sPrev").click
    end

    def click_save
        wait_for_ajax
    	find(".btn.btn-success.add-quantity.jsSave").click
    end

  end
end