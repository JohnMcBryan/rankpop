class VotesController < ApplicationController

  before_action :authenticate

  def new
    @vote = Vote.new
  end
  def create
    array = params['array'].split(/,/)
    # puts array
    array.each do |value|
      puts value
    end
    redirect_to ranktable_results_path(@ranktable)
  end

  private

  def vote_params(my_params)
    my_params.permit(:options)
  end

end