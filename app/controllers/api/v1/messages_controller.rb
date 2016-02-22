class Api::V1::MessagesController < ApplicationController

  def new
    message = Message.new
    render json: message
  end

    def create
      message = Message.new(message_params)
      if message.save
        render json: message
      else
        render json: {errors: topic.errors}, status: :unprocessable_entity
      end
    end

    def show
      render json: Message.find(params[:id])
    end

    def update
      message = Message.find(params[:id])
      message.update(message_params)
      render json: message
    end

    def destroy
      message = Message.find(params[:id])
      message.destroy
      render nothing: true
    end

    private
    def message_params
      params.require(:message).permit(:user_id, :topic_id, :content, :created_at, :updated_at)
    end



end
