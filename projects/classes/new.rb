# write a method #run that iterates through a list of assertions
# and asks each one to run its #check method and then #puts the result.

class Equal
def initialize(val1, val2)
    @val1 = val1
    @val2 = val2
end

def check
    @val1 == @val2
end
end

class Empty
def initialize(val)
    @val = val
end

def check
    @val.length == 0
end
end


class AssertionList
def initialize(assertion_class_equal,assertion_class_empty)
    @assertion_class_equal = assertion_class_equal
    @assertion_class_empty = assertion_class_empty
    @assertion_list = []
end

def create_equal(val1, val2)
    equal = @assertion_class_equal.new(val1, val2)
    @assertion_list << equal
end

def create_empty(em)
    empty = @assertion_class_empty.new(em)
    @assertion_list << empty
end

def run
    @assertion_list.each do | element |
    puts element.check
    end
end 
end

#setup
assertion_list2 = AssertionList.new(Equal, Empty)
assertion_list2.create_equal(4,5) # creates an instance of Equal and stores it
assertion_list2.create_empty([])  # creates an instance of Empty and stores it

#execute
assertion_list2.run

#expected results
# false
# true

## IMPLEMENTATION EXERCISE 1 ##
#setup
# test1 = Equal.new(1, 1)
# test2 = Equal.new(1, 2)
# test3 = Empty.new([1, 2])
# test4 = Empty.new({})
# assertion_list = AssertionList.new([test1, test2, test3, test4])

# #execute
# assertion_list.run

#expected result
# true
# false
# false
# true