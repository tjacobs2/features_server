require 'rubygems'
require 'composite_primary_keys'
class Residue < ActiveRecord::Base
  #self.primary_keys :struct_id, :resnum
  belongs_to :structure, :class_name => 'Structure', :foreign_key => 'struct_id'
  attr_accessible :name3, :res_type
end
