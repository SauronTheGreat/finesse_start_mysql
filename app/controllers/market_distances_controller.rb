class MarketDistancesController < ApplicationController
  # GET /market_distances
  # GET /market_distances.json
  def index
    @market_distances = MarketDistance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @market_distances }
    end
  end

  # GET /market_distances/1
  # GET /market_distances/1.json
  def show
    @market_distance = MarketDistance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @market_distance }
    end
  end

  # GET /market_distances/new
  # GET /market_distances/new.json
  def new
    @market_distance = MarketDistance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @market_distance }
    end
  end

  # GET /market_distances/1/edit
  def edit
    @market_distance = MarketDistance.find(params[:id])
  end

  # POST /market_distances
  # POST /market_distances.json
  def create
    @market_distance = MarketDistance.new(params[:market_distance])

    respond_to do |format|
      if @market_distance.save
        format.html { redirect_to @market_distance, notice: 'Market distance was successfully created.' }
        format.json { render json: @market_distance, status: :created, location: @market_distance }
      else
        format.html { render action: "new" }
        format.json { render json: @market_distance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /market_distances/1
  # PUT /market_distances/1.json
  def update
    @market_distance = MarketDistance.find(params[:id])

    respond_to do |format|
      if @market_distance.update_attributes(params[:market_distance])
        format.html { redirect_to @market_distance, notice: 'Market distance was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @market_distance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_distances/1
  # DELETE /market_distances/1.json
  def destroy
    @market_distance = MarketDistance.find(params[:id])
    @market_distance.destroy

    respond_to do |format|
      format.html { redirect_to market_distances_url }
      format.json { head :ok }
    end
  end
end
