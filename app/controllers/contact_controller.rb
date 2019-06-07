class ContactController < ApplicationController
  def index
    @contact = Contact.new
    render :action => 'index'
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render :action => 'index'
    else
      render :aciton => 'thanks'
    end
  end

  def thanks
    @contact = Contact.new(contact_params)
    ContactMailer.received_email(@contact).deliver
    render :action => 'thanks'
  end

  private
  def contact_params
    params.require(:contact).permit(
      :company,
      :name,
      :tel,
      :address,
      :email,
      :subject,
      :message
    )
  end
end
