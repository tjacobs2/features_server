class ProteinResidueConformationsController < ApplicationController

  # GET /structures/1/protein_residue_conformations
  def index
    @residues = Structure.find(params[:structure_id]).protein_residue_conformations

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @structure }
    end
  end

end
