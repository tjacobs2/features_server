class QueriesController < ApplicationController

  # GET /queries
  # GET /queries.json
  def index
    @structures = Structure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @structures }
    end
  end

  # GET /queries/new
  # GET /queries/new.json
  def new
    @query = Query.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @query }
    end
  end

  # POST /queries
  # POST /queries.json
  def create
    @query = Query.new(params[:structure_columns])

	respond_to do |format|
		format.html { redirect_to @query }
	end

  end

end
