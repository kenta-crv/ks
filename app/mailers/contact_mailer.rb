class ContactMailer < ActionMailer::Base
  default form: "smart@smart-document.jp"
  default to: "smart@smart-document.jp"

  def received_email(contact)
     @contact = Contact
     mail(:subject => "K`s Consultingへお問い合わせがありました") do |format|
      format.text
     end
  end
end
