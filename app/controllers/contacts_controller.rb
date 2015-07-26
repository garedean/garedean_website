class ContactsController < ApplicationController
  def new
  end

  def create
    ContactMailer.contact_email(params[:name], params[:email], params[:message]).deliver_now
    redirect_to :back, notice: "Message sent!"
  end
end
