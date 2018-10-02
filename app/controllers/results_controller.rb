class ResultsController < ApplicationController
  def index
    @ranktable = Ranktable.find(params[:ranktable_id])
    @votes = []
    @numOptions = @ranktable.options.split(/,/).count
    @ranktable.options.split(/,/).each do |text|
      option = text.tr('[]', '').tr('"','')
      raw = Vote.where(option: option).sum( :rank )
      score = raw
      @votes.push({option.strip => score})
    end
  end

end
