class GastrackersController < ApplicationController
  # GET /gastrackers
  # GET /gastrackers.json
  def index
    @gastrackers = Gastracker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gastrackers }
    end
  end

  # GET /gastrackers/1
  # GET /gastrackers/1.json
  def show
    @gastracker = Gastracker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gastracker }
    end
  end

  # GET /gastrackers/new
  # GET /gastrackers/new.json
  def new
    @gastracker = Gastracker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gastracker }
    end
  end

  # GET /gastrackers/1/edit
  def edit
    @gastracker = Gastracker.find(params[:id])
  end

  # POST /gastrackers
  # POST /gastrackers.json
  def create
    @gastracker = Gastracker.new(params[:gastracker])

    respond_to do |format|
      if @gastracker.save
        format.html { redirect_to @gastracker, notice: 'Gastracker was successfully created.' }
        format.json { render json: @gastracker, status: :created, location: @gastracker }
      else
        format.html { render action: "new" }
        format.json { render json: @gastracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gastrackers/1
  # PUT /gastrackers/1.json
  def update
    @gastracker = Gastracker.find(params[:id])

    respond_to do |format|
      if @gastracker.update_attributes(params[:gastracker])
        format.html { redirect_to @gastracker, notice: 'Gastracker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gastracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gastrackers/1
  # DELETE /gastrackers/1.json
  def destroy
    @gastracker = Gastracker.find(params[:id])
    @gastracker.destroy

    respond_to do |format|
      format.html { redirect_to gastrackers_url }
      format.json { head :no_content }
    end
  end
end
