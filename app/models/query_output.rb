class QueryOutput
	include ActiveModel::Validations
	include ActiveModel::Conversion
	extend  ActiveModel::Naming

	attr_accessor :colum_name

	def persisted?
		false
	end
end
