class Query
	include ActiveModel::Validations
	include ActiveModel::Conversion
	extend  ActiveModel::Naming

	attr_accessor :name, :structure_columns

	def initialize(structure_columns = [])
		@structure_columns = name, structure_columns
	end

	def test
		@structure_columns.each { |x| puts x }
	end


	def persisted?
		false
	end
end
