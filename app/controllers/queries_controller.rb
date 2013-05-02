class QueriesController < ApplicationController

  # GET /queries/new
  # GET /queries/new.json
  def new
    @query = Query.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @structure }
    end
  end

end
