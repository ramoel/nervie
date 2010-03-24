class TourpointsController < ApplicationController
  # GET /tourpoints
  # GET /tourpoints.xml
  def index
    @tourpoints = Tourpoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tourpoints }
    end
  end

  # GET /tourpoints/1
  # GET /tourpoints/1.xml
  def show
    @tourpoint = Tourpoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tourpoint }
    end
  end

  # GET /tourpoints/new
  # GET /tourpoints/new.xml
  def new
    @tourpoint = Tourpoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tourpoint }
    end
  end

  # GET /tourpoints/1/edit
  def edit
    @tourpoint = Tourpoint.find(params[:id])
  end

  # POST /tourpoints
  # POST /tourpoints.xml
  def create
    @tourpoint = Tourpoint.new(params[:tourpoint])

    respond_to do |format|
      if @tourpoint.save
        flash[:notice] = 'Tourpoint was successfully created.'
        format.html { redirect_to(@tourpoint) }
        format.xml  { render :xml => @tourpoint, :status => :created, :location => @tourpoint }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tourpoint.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tourpoints/1
  # PUT /tourpoints/1.xml
  def update
    @tourpoint = Tourpoint.find(params[:id])

    respond_to do |format|
      if @tourpoint.update_attributes(params[:tourpoint])
        flash[:notice] = 'Tourpoint was successfully updated.'
        format.html { redirect_to(@tourpoint) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tourpoint.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tourpoints/1
  # DELETE /tourpoints/1.xml
  def destroy
    @tourpoint = Tourpoint.find(params[:id])
    @tourpoint.destroy

    respond_to do |format|
      format.html { redirect_to(tourpoints_url) }
      format.xml  { head :ok }
    end
  end
end
