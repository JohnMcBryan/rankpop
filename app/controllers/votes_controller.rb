class VotesController < ApplicationController

  before_action :authenticate

  def new
    @vote = Vote.new
  end
  def create
    @ranktable = Ranktable.find(params["tableID"])
    total = params["options"].keys.count
    params["options"].each do |key, value|
      points = (total - value.to_i) + 1
      Vote.create(tableID: params["tableID"], userID: params["user"], option: key, rank: value, points: points)
    end
    redirect_to ranktable_results_path(@ranktable)
  end

  private

  def vote_params(my_params)
    my_params.permit(:options)
  end

end