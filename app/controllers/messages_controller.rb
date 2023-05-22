class MessagesController < ApplicationController

  before_action :set_message, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index 
     @messages = Message.all
  end

  def new 
     @messages = Message.new
  end

  def create 
     @messages = Message.new(message_params)
       if @messages.save
           flash[:notice] = "Message was created successfully."
           redirect_to messages_path
       else
           render 'new'
       end   
  end

  def edit 
  end

  def update
     if @messages.update(message_params)
     flash[:notice] = "Message was updated successfully."
     redirect_to messages_path
     else
     render 'edit'
     end
 end

  def destroy
     if @messages.destroy
        flash[:notice] = "Message was Deleted successfully."
        redirect_to messages_path
    else
     flash[:notice] = "Message was Not Deleted."
     end   


   end 


  private

  def message_params
     params.require(:message).permit(:message)
   end 

   def set_message 
    @messages = Message.find(params[:id])
  end  
end