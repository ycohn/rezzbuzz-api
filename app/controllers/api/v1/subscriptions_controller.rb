class Api::V1::SubscriptionsController < ApplicationController
  
  def new
    subscription = Subscription.new
    render json: subscription
  end

  def index
    render json: subscription.all
  end
  
  def create
    subscription = Subscription.new(subscription_params)
    if subscription.save
      render json: subscription
    else
      render json: {errors: subscription.errors}, status: :unprocessable_entity
    end
  end

  def show
    render json: Subscription.find(params[:id])
  end

  def update
    subscription = Subscription.find(params[:id])
    subscription.update(subscription_params)
    render json: subscription
  end

  def destroy
    subscription = Subscription.find(params[:id])
    subscription.destroy
    render nothing: true
  end

  private
  def subscription_params
    params.require(:subscription).permit(:topic_id, :user_id, :created_at, :updated_at)
  end

end
