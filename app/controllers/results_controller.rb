class ResultsController < ApplicationController
  def index
    @ranktable = Ranktable.find(params[:ranktable_id])
    @votes = Vote.where(tableID: params[:ranktable_id]).group(:option).sum(:rank).sort_by{|k, v| v}.reverse
    puts @votes
  end

end
