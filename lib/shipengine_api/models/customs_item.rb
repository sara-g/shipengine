=begin
#ShipEngine API

#ShipEngine™ is the world's best multi-carrier shipping API, with more than 20 supported shipping carriers.  You can easily get and compare shipping rates, print labels, track your shipments, and validate addresses anywhere in the world.  ### Worldwide Major Carrier Support Access the top global carriers in minutes—instead of weeks. Simply [connect your existing carrier accounts](https://docs.shipengine.com/docs/setup-a-carrier) in the API dashboard, and then [begin creating labels](https://docs.shipengine.com/docs/use-a-specific-service).  ### Real-Time Tracking [Track packages](https://docs.shipengine.com/docs/track-a-package) across any of our 20+ supported carrier accounts and create tracking events to keep your customers up-to-date. Easily integrate real-time tracking information for shipments into your app, email, or SMS.  ### Get Rates Across Carriers Make sure you ship as cost-effectively as possible by [quickly comparing rates](https://docs.shipengine.com/docs/get-shipping-rates) using the ShipEngine Rates API. As long as you have the carrier connected to your account, you'll be able to see and compare different rates and services.  ### Global Address Validation No matter your shipping volume, failed deliveries and address change surcharges cut into your bottom line and damage perception with customers. Our address validation services ensure your packages make it to the right place the first time. [Learn how to leverage our address validation services here.](https://docs.shipengine.com/docs/address-validation)  ShipEngine supports address validation for over 180 countries, including the United States, Canada, Great Britain, Australia, Germany, France, Norway, Spain, Sweden, Israel, Italy, and more. 

OpenAPI spec version: 1.0.0
Contact: sales@shipengine.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module ShipEngineApi
  class CustomsItem
    # A string that uniquely identifies the customs item id
    attr_accessor :customs_item_id

    attr_accessor :description

    attr_accessor :quantity

    attr_accessor :value

    attr_accessor :harmonized_tariff_code

    attr_accessor :country_of_origin

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'customs_item_id' => :'customs_item_id',
        :'description' => :'description',
        :'quantity' => :'quantity',
        :'value' => :'value',
        :'harmonized_tariff_code' => :'harmonized_tariff_code',
        :'country_of_origin' => :'country_of_origin'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'customs_item_id' => :'String',
        :'description' => :'String',
        :'quantity' => :'Integer',
        :'value' => :'Float',
        :'harmonized_tariff_code' => :'String',
        :'country_of_origin' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'customs_item_id')
        self.customs_item_id = attributes[:'customs_item_id']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'harmonized_tariff_code')
        self.harmonized_tariff_code = attributes[:'harmonized_tariff_code']
      end

      if attributes.has_key?(:'country_of_origin')
        self.country_of_origin = attributes[:'country_of_origin']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@customs_item_id.nil? && @customs_item_id.to_s.length > 25
        invalid_properties.push('invalid value for "customs_item_id", the character length must be smaller than or equal to 25.')
      end

      if !@customs_item_id.nil? && @customs_item_id.to_s.length < 1
        invalid_properties.push('invalid value for "customs_item_id", the character length must be great than or equal to 1.')
      end

      if !@customs_item_id.nil? && @customs_item_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        invalid_properties.push('invalid value for "customs_item_id", must conform to the pattern /^se(-[a-z0-9]+)+$/.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@customs_item_id.nil? && @customs_item_id.to_s.length > 25
      return false if !@customs_item_id.nil? && @customs_item_id.to_s.length < 1
      return false if !@customs_item_id.nil? && @customs_item_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customs_item_id Value to be assigned
    def customs_item_id=(customs_item_id)
      if !customs_item_id.nil? && customs_item_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "customs_item_id", the character length must be smaller than or equal to 25.'
      end

      if !customs_item_id.nil? && customs_item_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customs_item_id", the character length must be great than or equal to 1.'
      end

      if !customs_item_id.nil? && customs_item_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, 'invalid value for "customs_item_id", must conform to the pattern /^se(-[a-z0-9]+)+$/.'
      end

      @customs_item_id = customs_item_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          customs_item_id == o.customs_item_id &&
          description == o.description &&
          quantity == o.quantity &&
          value == o.value &&
          harmonized_tariff_code == o.harmonized_tariff_code &&
          country_of_origin == o.country_of_origin
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [customs_item_id, description, quantity, value, harmonized_tariff_code, country_of_origin].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ShipEngineApi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end