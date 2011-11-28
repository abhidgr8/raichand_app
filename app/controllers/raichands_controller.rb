class RaichandsController < ApplicationController
  # GET /raichands
  # GET /raichands.xml
  def index
    @raichands = Raichand.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @raichands }
    end
  end

  # GET /raichands/1
  # GET /raichands/1.xml
  def show
    @raichand = Raichand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @raichand }
    end
  end

  # GET /raichands/new
  # GET /raichands/new.xml
  def new
    @raichand = Raichand.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @raichand }
    end
  end

  # GET /raichands/1/edit
  def edit
    @raichand = Raichand.find(params[:id])
  end

  # POST /raichands
  # POST /raichands.xml
  def create
    @raichand = Raichand.new(params[:raichand])

    respond_to do |format|
      if @raichand.save
        format.html { redirect_to(@raichand, :notice => 'Raichand was successfully created.') }
        format.xml  { render :xml => @raichand, :status => :created, :location => @raichand }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @raichand.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /raichands/1
  # PUT /raichands/1.xml
  def update
    @raichand = Raichand.find(params[:id])

    respond_to do |format|
      if @raichand.update_attributes(params[:raichand])
        format.html { redirect_to(@raichand, :notice => 'Raichand was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @raichand.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /raichands/1
  # DELETE /raichands/1.xml
  def destroy
    @raichand = Raichand.find(params[:id])
    @raichand.destroy

    respond_to do |format|
      format.html { redirect_to(raichands_url) }
      format.xml  { head :ok }
    end
  end
end
