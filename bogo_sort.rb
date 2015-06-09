module BogoSortModule
	def did_finish_sort(array)
		final_index = array.length - 1
		for focus in 0..(final_index - 1) do
			if array[focus] > array[focus + 1] then
				return false
			end
		end
		return true;
	end

	def bogo_sort(array)
		random = Random.new()
		final_index = array.length - 1

		while did_finish_sort(array) == false do
			for focus in 0..final_index do
				target = random.rand(array.length)
				array[focus], array[target] = array[target], array[focus]
			end
		end

		return array
	end

	module_function :bogo_sort
end

include BogoSortModule