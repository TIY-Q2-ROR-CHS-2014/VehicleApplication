class OptionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_option, only: [:show, :edit, :update, :destroy]

  # GET /options
  # GET /options.json
  def index
    authorize! :read, Option
    @options = Option.all
  end

  # GET /options/1
  # GET /options/1.json
  def show
    authorize! :read, Option
  end

  # GET /options/new
  def new
    authorize! :manage, Option
    @option = Option.new
  end

  # GET /options/1/edit
  def edit
    authorize! :manage, Option
  end

  # POST /options
  # POST /options.json
  def create
    authorize! :manage, Option
    @option = Option.new(option_params)

    respond_to do |format|
      if @option.save
        format.html { redirect_to @option, notice: 'Option was successfully created.' }
        format.json { render :show, status: :created, location: @option }
      else
        format.html { render :new }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /options/1
  # PATCH/PUT /options/1.json
  def update
    authorize! :manage, Option
    respond_to do |format|
      if @option.update(option_params)
        format.html { redirect_to @option, notice: 'Option was successfully updated.' }
        format.json { render :show, status: :ok, location: @option }
      else
        format.html { render :edit }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /options/1
  # DELETE /options/1.json
  def destroy
    authorize! :manage, Option
    @option.destroy
    respond_to do |format|
      format.html { redirect_to options_url, notice: 'Option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option
      @option = Option.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def option_params
      params.require(:option).permit(:option_type, :name, :cost, :markup)
    end
end
