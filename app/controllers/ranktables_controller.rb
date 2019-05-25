class RanktablesController < ApplicationController

  # http://vicfriedman.github.io/blog/2015/07/18/create-multiple-objects-from-single-form-in-rails/
  before_action :authenticate
  def index
    @ranktables = Ranktable.all
  end
  def show
    @ranktable = Ranktable.find(params[:id])
    @options = @ranktable.option
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
    @ranktable = Ranktable.new
  end
  def create
    @ranktable = Ranktable.create(ranktable_params)
    if @ranktable.save
      redirect_to @ranktable
    else
      render 'new'
    end
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