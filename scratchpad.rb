class MyClass
    def to_s
        "Hello to_s"
    end

    def inspect
        "Hello inspect"
    end
end

my_instance = MyClass.new
puts my_instance
p my_instance
