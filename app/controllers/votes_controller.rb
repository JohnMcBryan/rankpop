class VotesController < ApplicationController

  before_action :authenticate

  def new
    @vote = Vote.new
  end
  def create
    @ranktable3 = Ranktable.find(params["tableID"])
    array = params['array'].split(/,/)
    # puts array
    rank = 1
    array.each do |value|
      puts value
      Vote.create(tableID: params["tableID"], userID: params["user"], option: value, rank: rank)
      rank = rank + 1
    end
    redirect_to ranktable_results_path(@ranktable3)
  end

  private

  def vote_params(my_params)
    my_params.permit(:options)
  end

end