# encoding: UTF-8
class ContactController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.contact(@message).deliver
      redirect_to contato_path, notice: "Mensagem enviada!"
    else
      flash.now.alert = "Preencha os campos corretamente! #{@message.errors.inspect}"
      render :new
    end
  end
end