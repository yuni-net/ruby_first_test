#! ruby -Ku

require("./bubble_sort.rb")

def main()
	array = [3,4,5,2,1]
	array = bubble_sort(array)
	print array.to_s
end

main()