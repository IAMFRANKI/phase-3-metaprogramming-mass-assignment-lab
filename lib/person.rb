class Person
  # your code here

    def initialize(attributes)
      attributes.each do |key, value|
        instance_variable_set("@#{key}", value)
        self.class.send(:attr_accessor, key)
      end
    end
  end
  