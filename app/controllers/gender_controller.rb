class GenderController < ApplicationController
def index
    @genders = Gender.all
  end

  def new
    @gender = Gender.new
  end

  def create
    @gender = Gender.new params[:Gender]
    if @gender.save
      redirect_to gender_path
    else
      render :action => 'new'
    end
  end

  def edit
    @gender = Gender.find params[:id]
  end

  def update
    @Gender = Gender.find params[:id]
    if @Gender.update_attributes params[:Gender]
      redirect_to gender_path
    else
      render :action => :edit
    end
  end

  def destroy
    @Gender = Gender.find params[:id]
    @Gender.destroy
    redirect_to gender_path
  end

  def show
    @Gender = Gender.find params[:id]
  end
end
