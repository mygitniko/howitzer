require_relative 'home_page'

module AbbottPlate
  class LoginPage < WebPage
    validates :url, pattern: /#{settings.app_url}$/

    add_field_locator       :email,                "Email"
    add_field_locator       :mobilenumber,         "MobileNumber"
    add_button_locator      :login_button,         "Login"
    add_locator             :error_message5,       xpath: "//p[@class = 'errorEmail text-error']"
    add_locator             :error_message6,       xpath: ".//p[@class = 'errorPhone text-error']"
    add_locator             :error_message7,       xpath: "//div[@class = 'bootbox modal fade in']"

    add_button_locator      :proceed_button,       "Proceed"

    def self.open(url="#{settings.app_url}")
      super
    end

    def login(email, mobilenumber)
      log.info "Fill in login form with data with user: #{email} and mobilenumber #{mobilenumber}"
      set_email(email)
      set_mnumber(mobilenumber)
      submit_form
      AbbottPlate::DashboardPage.given
    end

    def set_email(email)
      fill_in(field_locator(:email), with: email)
    end

    def set_mnumber(mobilenumber)
      fill_in(field_locator(:mobilenumber), with: mobilenumber)
    end

    def fill_in_form(params={})
      log.info "Input login account: #{params}"
      fill_in(field_locator(:email), with: params[:Email]) if params[:Email]
      fill_in(field_locator(:mobilenumber), with: params[:MobileNumber]) if params[:MobileNumber]
    end

    def submit_form
      log.info "Login System"
      click_button(button_locator(:login_button))
    end

    def register_click
      log.info "Register System"
      first("form > table a[type = 'button']").click
    end

    def proceed_click
      click_button(button_locator(:proceed_button))
    end

    def checkbox_click
      find(:css, "#usr-agreement").set(true)
    end

    def error_message5
      find(locator(:error_message5))
    end

    def confirm_message
      find('div#confirm-modal.div.bootbox.modal.fade.in')
    end

    def error_message7
      find(locator(:error_message7))
    end

    def error_message6
      find(locator(:error_message6))
    end

    def error_message1
      evaluate_script("$(document).ready(function(){$(\"p.errorEmail\").show(1, function () {
                    $(this).text(\"Please fill out this field\");return false;});});")
      execute_script("$(document).ready(function(){$(\"p.errorEmail\").show(1, function () {
                    $(this).text(\"Please fill out this field\");
                    return false;
                });});")
    end

    def error_message2
      evaluate_script("$(document).ready(function(){$(\"p.errorPhone\").show(1, function () {
                    $(this).text(\"Please fill out this field\");return false;});});")
      execute_script("$(document).ready(function(){$(\"p.errorPhone\").show(1, function () {
                    $(this).text(\"Please fill out this field\");
                    return false;
                });});")
    end

    def error_message4
      evaluate_script("$(document).ready(function(){$(\"p.errorEmail\").show(1, function () {
                    $(this).text(\"Please match the requested format\");return false;});});")
      execute_script("$(document).ready(function(){$(\"p.errorEmail\").show(1, function () {
                    $(this).text(\"Please match the requested format\");
                    return false;
                });});")
    end
  end
end