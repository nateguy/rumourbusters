class MessagesController < ApplicationController
  respond_to :js

  def index
    @messages = Message.all
  end

  def create
    @message = Message.create!(params_message)
  end

  private

  def params_message
    params.require(:message).permit(:content)
  end

end