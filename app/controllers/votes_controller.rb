class VotesController < ApplicationController

  before_action :authenticate

  def new
    @vote = Vote.new
  end
  def create
    params["options"].each do |key, value|
      Vote.create(tableID: params["tableID"], userID: params["user"], option: key, rank: value)
    end
    redirect_to ranktables_path
  end

  private

  def vote_params(my_params)
    my_params.permit(:options)
  end

end