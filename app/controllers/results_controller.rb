class ResultsController < ApplicationController
  def index
    @ranktable = Ranktable.find(params[:ranktable_id])
    @votes = Vote.where(tableID: params[:ranktable_id])
  end

end
