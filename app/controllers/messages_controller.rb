#coding: utf-8
class MessagesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @messages = Message.order('created_at desc').limit(5) 
  end

  def create
    @message = current_user.messages.create :content => params[:message][:content]
  end
end
