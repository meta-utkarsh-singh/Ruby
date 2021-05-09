def location_in_hierarchy(object, method)
    class_object = object.class
    class_object_list = []
      while not class_object.nil?
      if(class_object.instance_methods.include?(method))
            class_object_list << class_object
      end
      class_object = class_object.nil? ? nil : class_object.superclass 
    end
    class_object_list[-1]
end