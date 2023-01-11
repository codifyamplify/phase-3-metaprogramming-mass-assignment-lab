class Person
  # your code here
  # attr_accessors here
  # attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
  # accepts a hash on initialization
  def initialize(attributes)
    if attributes
      attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send("#{key}=", value)
      end
    end
  end
end
