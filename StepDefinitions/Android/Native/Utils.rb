class Utils
	def initialize
		@objectsMap = createAndInitializeMap
	end
	
	def getValueFromOR(key)
		var = key
		if not @objectsMap[key].nil?
			var = @objectsMap[key]
		end
		var
	end
end