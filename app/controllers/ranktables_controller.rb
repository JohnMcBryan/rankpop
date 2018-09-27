class RanktablesController < ApplicationController


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
    @ranktable = Ranktable.new
  end
  def create
    @ranktable = Ranktable.new(ranktable_params)
    @ranktable.save
    redirect_to @ranktable
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