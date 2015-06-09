#! ruby -Ku

require("./bubble_sort.rb")
require("./bogo_sort.rb")

def main()
	randmax = 10
	random = Random.new()
	num = random.rand(randmax)

	array = [3,4,5,2,1]
#	array = bubble_sort(array)
	bogo_sort(array)
	print array.to_s
end

main()