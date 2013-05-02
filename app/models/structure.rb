class Structure < ActiveRecord::Base
	set_table_name "structures"

	attr_accessible :batch_id, :input_tag
end
