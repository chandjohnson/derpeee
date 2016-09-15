class BricksController < ApplicationController
  before_action :set_brick, only: [:show, :edit, :update, :destroy]

  # GET /bricks
  # GET /bricks.json
  def index
    @bricks = Brick.all
  end

  # GET /bricks/1
  # GET /bricks/1.json
  def show
  end

  # GET /bricks/new
  def new
    @brick = Brick.new
  end

  # GET /bricks/1/edit
  def edit
  end

  # POST /bricks
  # POST /bricks.json
  def create
    @brick = Brick.new(brick_params)

    respond_to do |format|
      if @brick.save
        format.html { redirect_to @brick, notice: 'Brick was successfully created.' }
        format.json { render :show, status: :created, location: @brick }
      else
        format.html { render :new }
        format.json { render json: @brick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bricks/1
  # PATCH/PUT /bricks/1.json
  def update
    respond_to do |format|
      if @brick.update(brick_params)
        format.html { redirect_to @brick, notice: 'Brick was successfully updated.' }
        format.json { render :show, status: :ok, location: @brick }
      else
        format.html { render :edit }
        format.json { render json: @brick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bricks/1
  # DELETE /bricks/1.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brick
      @brick = Brick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brick_params
      params.require(:brick).permit(:string)
    end
end
