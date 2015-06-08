#! ruby -Ku

def trade(one, another)
	store = one
	one = another
	another = one
end

def bubble_sort(array)
	unsettled_num = array.length
	unsettled_final_No = unsettled_num - 1
	while unsettled_final_No > 1 do
		for focus in 0..(unsettled_final_No - 1) do
			if array[focus] > array[focus + 1] then
				trade(array[focus], array[focus + 1])
			end
		end
		unsettled_final_No -= 1
	end
end

def main()
	array = [5,4,3,2,1]
	bubble_sort(array)
	print array.to_s
end

main()