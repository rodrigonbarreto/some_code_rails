module ContactsHelper
	def show_kind(kind)
		if !kind.blank?
			kind.description
		else
			"N/D"
		end
		
	end
end
