class RanktablesController < ApplicationController

  # http://vicfriedman.github.io/blog/2015/07/18/create-multiple-objects-from-single-form-in-rails/
  before_action :authenticate

  def index
    @ranktables = Ranktable.all
  end
  def show
    @ranktable = Ranktable.find(params[:id])
  end
  def edit
    @ranktable = Ranktable.find(params[:id])
  end
  def update
    @ranktable = Ranktable.find(params[:id])
    @ranktable.update(ranktable_params)
    redirect_to @ranktable
  end
  def new
    @ranktable_params = Ranktable.new
  end
  def create
    @ranktable_params = Ranktable.new(ranktable_params)
    puts "options:"
    # @ranktable_params.options.split(/,/).each do |text|
    #   option = text.tr('[]', '').tr('"','').
    #   puts option.strip
    # end
    redirect_to index
    # @ranktable_params.save
    # redirect_to @ranktable_params
  end
  def destroy
    @ranktable = Ranktable.find(params[:id])
    @ranktable.destroy
    redirect_to ranktables_path
  end

  private

  def ranktable_params
    params.require(:ranktable).permit!
  end

end