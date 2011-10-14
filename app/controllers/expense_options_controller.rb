class ExpenseOptionsController < ApplicationController
  # GET /expense_options
  # GET /expense_options.json
  def index
    @expense_options = ExpenseOption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @expense_options }
    end
  end

  # GET /expense_options/1
  # GET /expense_options/1.json
  def show
    @expense_option = ExpenseOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @expense_option }
    end
  end

  # GET /expense_options/new
  # GET /expense_options/new.json
  def new
    @expense_option = ExpenseOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @expense_option }
    end
  end

  # GET /expense_options/1/edit
  def edit
    @expense_option = ExpenseOption.find(params[:id])
  end

  # POST /expense_options
  # POST /expense_options.json
  def create
    @expense_option = ExpenseOption.new(params[:expense_option])

    respond_to do |format|
      if @expense_option.save
        format.html { redirect_to @expense_option, notice: 'Expense option was successfully created.' }
        format.json { render json: @expense_option, status: :created, location: @expense_option }
      else
        format.html { render action: "new" }
        format.json { render json: @expense_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /expense_options/1
  # PUT /expense_options/1.json
  def update
    @expense_option = ExpenseOption.find(params[:id])

    respond_to do |format|
      if @expense_option.update_attributes(params[:expense_option])
        format.html { redirect_to @expense_option, notice: 'Expense option was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @expense_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_options/1
  # DELETE /expense_options/1.json
  def destroy
    @expense_option = ExpenseOption.find(params[:id])
    @expense_option.destroy

    respond_to do |format|
      format.html { redirect_to expense_options_url }
      format.json { head :ok }
    end
  end
end
