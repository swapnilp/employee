class EmployesController < ApplicationController
  def index
    @employes = Employe.all
  end
  
  def new
    @employe = Employe.new
  end

  def create 
    Employe.transaction do
      @employe = Employe.new(params[:employe])
      if @employe.save!
        redirect_to(@employe, :notice => 'Employee was successfully created.')
      else
        render :action => "new"
      end
    end
  end
  
  def edit
    @employe = Employe.where(:id => params[:id]).first
  end

  def show
    @employe = Employe.where(:id => params[:id]).first
  end

  def update
    @employe = Employe.where(:id => params[:id]).first
    if @employe.update_attributes(params[:employe])
      redirect_to(@employe, :notice => 'Post was successfully updated.')
    else 
      render :action => "edit"
    end
    
  end
  
  def destroy
    employe = Employe.where(:id => params[:id]).first
    employe.destroy
    redirect_to :action => "index"
  end
end
