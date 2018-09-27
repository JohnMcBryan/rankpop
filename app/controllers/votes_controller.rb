class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end
  def create
    params["votes"].each do |vote|
      vote.create(vote_params(vote))
    end
    redirect_to root_path
  end

  private

  def vote_params(my_params)
    my_params.permit(:option)
  end

end