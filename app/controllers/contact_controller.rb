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
      flash.now.alert = "Preencha os campos corretamente!"
      render :new
    end
  end

  def exclusive
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.exclusive_contact(@message).deliver
      redirect_to exclusive_path, notice: "Mensagem enviada!"
    else
      redirect_to exclusive_path, alert: "Preencha os campos corretamente!"
    end
  end
end