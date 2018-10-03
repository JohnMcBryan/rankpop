class ResultsController < ApplicationController
  def index
    @ranktable = Ranktable.find(params[:ranktable_id])
    @votes = []
    @ranktable.options.split(/,/).each do |text|
      option = text.tr('[]', '').tr('"','')
      score = Vote.where(option: option).sum( :points )
      @votes.push([option.strip , score])
    end
  end

end
