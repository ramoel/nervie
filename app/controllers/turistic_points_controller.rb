class TuristicPointsController < ApplicationController
  # GET /turistic_points
  # GET /turistic_points.xml
  def index
    @turistic_points = TuristicPoint.paginate(:per_page => 10, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @turistic_points }
    end
  end

  # GET /turistic_points/1
  # GET /turistic_points/1.xml
  def show
    @turistic_point = TuristicPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @turistic_point }
    end
  end

  # GET /turistic_points/new
  # GET /turistic_points/new.xml
  def new
    @turistic_point = TuristicPoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @turistic_point }
    end
  end

  # GET /turistic_points/1/edit
  def edit
    @turistic_point = TuristicPoint.find(params[:id])
  end

  # POST /turistic_points
  # POST /turistic_points.xml
  def create
    @turistic_point = TuristicPoint.new(params[:turistic_point])

    respond_to do |format|
      if @turistic_point.save
        flash[:notice] = 'TuristicPoint was successfully created.'
        format.html { redirect_to(@turistic_point) }
        format.xml  { render :xml => @turistic_point, :status => :created, :location => @turistic_point }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @turistic_point.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /turistic_points/1
  # PUT /turistic_points/1.xml
  def update
    @turistic_point = TuristicPoint.find(params[:id])

    respond_to do |format|
      if @turistic_point.update_attributes(params[:turistic_point])
        flash[:notice] = 'TuristicPoint was successfully updated.'
        format.html { redirect_to(@turistic_point) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @turistic_point.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /turistic_points/1
  # DELETE /turistic_points/1.xml
  def destroy
    @turistic_point = TuristicPoint.find(params[:id])
    @turistic_point.destroy

    respond_to do |format|
      format.html { redirect_to(turistic_points_url) }
      format.xml  { head :ok }
    end
  end
end
