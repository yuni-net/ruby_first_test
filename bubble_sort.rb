module BubbleSortModule
	def bubble_sort(array)
		unsettled_num = array.length
		unsettled_final_No = unsettled_num - 1
		while unsettled_final_No > 0 do
			for focus in 0..(unsettled_final_No - 1) do
				if array[focus] > array[focus + 1] then
					array[focus], array[focus + 1] = array[focus + 1], array[focus]
				end
			end
			unsettled_final_No -= 1
		end

		return array
	end

	module_function :bubble_sort
end

include BubbleSortModule