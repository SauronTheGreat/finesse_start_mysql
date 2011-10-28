class SimulationsController < ApplicationController
  # GET /simulations
  # GET /simulations.json
  def index
    @facilitator=Facilitator.find_by_user_id(current_user.id)

    @simulations = @facilitator.simulations

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @simulations }
    end
  end

  # GET /simulations/1
  # GET /simulations/1.json
  def show
    @simulation = Simulation.find(params[:id])
    @decision_parameters=@simulation.simulation_decision_parameters
    @markets=@simulation.simulation_markets

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @simulation }
    end
  end

  # GET /simulations/new
  # GET /simulations/new.json
  def new
    @facilitator=Facilitator.find_by_user_id(current_user.id)

    @simulation = Simulation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @simulation }
    end
  end

  # GET /simulations/1/edit
  def edit
    @facilitator=Facilitator.find_by_user_id(current_user.id)
    @simulation = Simulation.find(params[:id])
  end

  # POST /simulations
  # POST /simulations.json
  def create
    @simulation = Simulation.new(params[:simulation])

    respond_to do |format|
      if @simulation.save
        format.html { redirect_to @simulation, notice: 'Simulation was successfully created.' }
        format.json { render json: @simulation, status: :created, location: @simulation }
      else
        format.html { render action: "new" }
        format.json { render json: @simulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /simulations/1
  # PUT /simulations/1.json
  def update
    @simulation = Simulation.find(params[:id])

    respond_to do |format|
      if @simulation.update_attributes(params[:simulation])
        format.html { redirect_to @simulation, notice: 'Simulation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @simulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simulations/1
  # DELETE /simulations/1.json
  def destroy
    @simulation = Simulation.find(params[:id])
    @simulation.destroy

    respond_to do |format|
      format.html { redirect_to simulations_url }
      format.json { head :ok }
    end
  end

  def get_student_group
    @simulation=Simulation.find(params[:simulation_id])
    @student_groups=StudentGroup.all.collect { |sg| [sg.name, sg.id] }

  end

  def set_student_group
    @simulation=Simulation.find(params[:simulation_id])
    @simulation.student_group_id=params[:student_group_id]
    @simulation.save!
    redirect_to root_path
  end

  def initiate_simulation
    @simulation=Simulation.find(params[:simulation_id])
    @markets=@simulation.simulation_markets
    @markets.each do |market|
      Dealer.create_dealers_of_world(market.market_id)
      Consumer.create_consumers_from_dealers(market.market_id)
      Vendor.create_vendors_from_market(market.market_id,@simulation.id)
    end
    Player.create_players_from_student_group(@simulation.id)

  end
end
