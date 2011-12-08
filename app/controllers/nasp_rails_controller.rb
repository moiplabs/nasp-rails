# encoding: utf-8
class NaspRailsController < ApplicationController

  # Disable XSS protection to create action
  skip_before_filter :verify_authenticity_token, :only => [:create]

  # GET /nasp_rails
  # GET /nasp_rails.json
  def index
    @nasp_rails = NaspRail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @nasp_rails }
    end
  end

  # GET /nasp_rails/1
  # GET /nasp_rails/1.json
  def show
    @nasp_rail = NaspRail.find(params[:id])

    respond_to do |format|
        format.html # show.html.erb
        format.json { render :json => @nasp_rail }
    end
  end

  # GET /nasp_rails/new
  # GET /nasp_rails/new.json
  def new
   @nasp_rail = NaspRail.new

   respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @nasp_rail }
    end
  end

  # GET /nasp_rails/1/edit
  def edit
    @nasp_rail = NaspRail.find(params[:id])
  end

  # POST /nasp_rails
  # POST /nasp_rails.json
  def create
    # Loggin data from POST
    logger.debug "--" * 50
    logger.debug "Data from POST: #{params.inspect}"
    logger.debug "--" * 50

    @nasp_rail = NaspRail.new(params.keep_if { |key, value| NaspRail.column_names.include? key })

    respond_to do |format|
      if @nasp_rail.save
        format.html { redirect_to @nasp_rail, :notice => 'Nova entrada criada com sucesso.' }
        format.json { render :json => @nasp_rail, :status => :created, :location => @nasp_rail }
      else
        format.html { render :action => "new" }
        format.json { render :json => @nasp_rail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nasp_rails/1
  # PUT /nasp_rails/1.json
  def update
    @nasp_rail = NaspRail.find(params[:id])

    respond_to do |format|
      if @nasp_rail.update_attributes(params[:nasp_rail])
        format.html { redirect_to @nasp_rail, :notice => 'Entrada atualizada com sucesso.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @nasp_rail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nasp_rails/1
  # DELETE /nasp_rails/1.json
  def destroy
    @nasp_rail = NaspRail.find(params[:id])
    @nasp_rail.destroy

    respond_to do |format|
      format.html { redirect_to nasp_rails_url }
      format.json { head :ok }
    end
  end

  # POST /nasp_rails
  # POST /nasp_rails.json
  def moip_post
    @nasp_rail = NaspRail.new(params[:nasp_rail])

    format.html { redirect_to @nasp_rail, :notice => 'Nova entrada criada com sucesso.' }
    format.json { render :json => @nasp_rail, :status => :created, :location => @nasp_rail }
  end
end
