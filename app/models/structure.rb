class Structure < ActiveRecord::Base
	self.primary_key = "struct_id"
	attr_readonly :struct_id, :batch_id, :input_tag

	has_many :residues, :foreign_key => 'struct_id'
	has_many :protein_residue_conformations, :foreign_key => 'struct_id'
end
