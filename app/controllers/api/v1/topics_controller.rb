class Api::V1::TopicsController < ApplicationController

  def create
    topic = Topic.create_from_ember(topic_params)
    render json: topic
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
