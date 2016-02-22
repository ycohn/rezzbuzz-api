class Api::V1::TopicsController < ApplicationController

  def new
    topic = Topic.new
    render json: topic
  end

  def index
    render json: Topic.all
    
  end
  
  def create
    topic = Topic.new(topic_params)
    if topic.save
      render json: topic
    else
      render json: {errors: topic.errors}, status: :unprocessable_entity
    end
  end

  def show
    render json: Topic.find(params[:id])
  end

  def update
    topic = Topic.find(params[:id])
    topic.update(topic_params)
    render json: topic
  end

  def destroy
    topic = Topic.find(params[:id])
    topic.destroy
    render nothing: true
  end

  private
  def topic_params
    params.require(:topic).permit(:building_id, :title, :description, :created_at, :updated_at)
  end


end
