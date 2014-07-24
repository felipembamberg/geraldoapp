class IndividuosController < ApplicationController
  # GET /individuos
  # GET /individuos.json
  def index
    @individuos = Individuo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @individuos }
    end
  end

  # GET /individuos/1
  # GET /individuos/1.json
  def show
    @individuo = Individuo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @individuo }
    end
  end

  # GET /individuos/new
  # GET /individuos/new.json
  def new
    @individuo = Individuo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @individuo }
    end
  end

  # GET /individuos/1/edit
  def edit
    @individuo = Individuo.find(params[:id])
  end

  # POST /individuos
  # POST /individuos.json
  def create
    @individuo = Individuo.new(params[:individuo])

    respond_to do |format|
      if @individuo.save
        format.html { redirect_to @individuo, notice: 'Individuo was successfully created.' }
        format.json { render json: @individuo, status: :created, location: @individuo }
      else
        format.html { render action: "new" }
        format.json { render json: @individuo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /individuos/1
  # PUT /individuos/1.json
  def update
    @individuo = Individuo.find(params[:id])

    respond_to do |format|
      if @individuo.update_attributes(params[:individuo])
        format.html { redirect_to @individuo, notice: 'Individuo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @individuo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /individuos/1
  # DELETE /individuos/1.json
  def destroy
    @individuo = Individuo.find(params[:id])
    @individuo.destroy

    respond_to do |format|
      format.html { redirect_to individuos_url }
      format.json { head :no_content }
    end
  end
end
