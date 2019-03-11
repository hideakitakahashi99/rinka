class MessagesController < ApplicationController
  def message_index
    @message = Message.new
  end
 
  def confirm
    @message = Message.new(message_params)
    if @message.valid?
      render :action => 'confirm'
    else
      render :action => 'message_index'
    end
  end
 
  def done
    @message = Message.new(message_params)
    if params[:back]
      render :action => 'message_index'
    else
      MessageMailer.received_email(@message).deliver_now
      render :action => 'done'
    end
  end
  
  private
  def message_params
    params.require(:message).permit(:name, :email, :content, :number, :time, :date, :phone)
  end
end
