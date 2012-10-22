#coding: utf-8
class MessagesController < ApplicationController
  def index
    @messages = Message.order('created_at desc')
  end

  def create
    @message = Message.create!(params[:message])
  end
end
