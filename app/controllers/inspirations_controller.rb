class InspirationsController < ApplicationController
  before_action :set_inspiration, only: [:show, :update, :edit, :destroy]

  def index
    @inspirations = current_user.inspirations
  end

  def show
  end

  def new
    @inspiration = Inspiration.new
  end

  def create
    @inspiration = current_user.inspirations.new(inspiration_params)
    if @inspiration.save
      redirect_to inspirations_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @inspiration.update(inspiration_params)
      redirect_to inspirations_path
    else
      render :edit
    end
  end

  def destroy
    @inspiration.destroy
    redirect_to inspirations_path
  end

  private
    def inspiration_params
      params.require(:inspiration).permit(:source, :body)
    end

    def set_inspiration
      @inspiration = current_user.inspirations.find(params[:id])
    end

end
