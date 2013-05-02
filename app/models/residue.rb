require 'rubygems'
require 'composite_primary_keys'
class Residue < ActiveRecord::Base
  self.primary_keys = [:struct_id, :resnum]
  attr_readonly :name3, :res_type, :resnum
  alias_attribute :resnum, :resNum

  belongs_to :structure, :class_name => 'Structure', :foreign_key => 'struct_id'
end
