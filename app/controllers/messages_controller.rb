#coding: utf-8
class MessagesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @messages = Message.order('created_at desc')
  end

  def create

    @message = current_user.messages.new
    @message.content = params[:message][:content]
    @message.save
  end
end
