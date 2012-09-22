class GadgagsController < ApplicationController
  def index
    @gadgags = Gadgag.all
  end

  def new
    @gadgag = Gadgag.new
  end

  def create
    Gadgag.transaction do
      @gadgag = Gadgag.new(params[:gadgag])
      if @gadgag.save!
        redirect_to(@gadgag, :notice => 'Gadgat was successfully created.')
      else
        render :action => "new"
      end
    end
  end

  def edit
    @gadgag = Gadgag.where(:id => params[:id]).first
  end

  def show
    @gadgag = Gadgag.where(:id => params[:id]).first
  end

  def update
    @gadgag = Gadgag.where(:id => params[:id]).first
    if @gadgag.update_attributes(params[:gadgag])
      redirect_to(@gadgag, :notice => 'Gadgat was successfully updated.')
    else
      render :action => "edit"
    end
  end
  
  def destroy
    #employe = Employe.where(:id => params[:id]).first
    #employe.destroy
    #redirect_to :action => "index"
  end
end
