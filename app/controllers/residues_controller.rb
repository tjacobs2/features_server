class ResiduesController < ApplicationController

  # GET /structures/1/residues
  # GET /structures/1/residues.json
  def index
    @residues = Structure.find(params[:structure_id]).residues

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @structure }
    end
  end

  # GET /structures/1/residues/1
  # GET /structures/1/residues/1.json
  def show
	 @residue = Residue.find(params[:structure_id], params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @structure }
    end
  end

end
