class GakusaiMailer < ApplicationMailer
  default from: "receiveMail"
  
    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.notice_mailer.sendmail_confirm.subject
    #
    def sendmail_confirm( auth_url, address )
      @auth_url = auth_url
      mail to: address, subject: "ActionMailer test"
    end
    def auth_fin( address, key )
      @key = key
      mail to: address, subject: "ActionMailer auth"
    end
end
