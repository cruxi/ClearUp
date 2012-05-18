module ApplicationHelper
  
  def to_number_field_tag(field_type, options = {})
          options = options.stringify_keys
          if range = options.delete("in") || options.delete("within")
            options.update("min" => range.min, "max" => range.max)
          end
          to_input_field_tag(field_type, options)
        end
end
