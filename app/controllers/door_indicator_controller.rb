class DoorIndicatorController < ApplicationController
  before_action :check_token, only: [:open, :close]
  skip_before_action :verify_authenticity_token, only: [:open, :close]


  def open
    DoorLog.open!
  end

  def close
    DoorLog.close!
  end

  def show
  end

  private

  def check_token
    token = RequestToken.fetch
    incoming_token = params[:token]
      if incoming_token != token
        render :nothing, status: :bad_request
      end
  end
end
