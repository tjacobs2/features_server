require 'rubygems'
require 'composite_primary_keys'
class ProteinResidueConformation < ActiveRecord::Base
  set_table_name 'protein_residue_conformation'
  self.primary_keys = [:struct_id, :seqpos]
  #attr_readonly :seqpos, :secstruct, :phi, :psi, :omega, :chi1, :chi2, :chi3, :chi4
  attr_readonly :struct_id, :seqpos, :secstruct, :phi, :psi, :omega, :chi1, :chi2, :chi3, :chi4
  belongs_to :structure, :class_name => 'Structure', :foreign_key => 'struct_id'
end
