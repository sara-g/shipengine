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
  class RateEstimateRequestBody
    # A string that uniquely identifies the carrier id
    attr_accessor :carrier_id

    attr_accessor :carrier_ids

    attr_accessor :from_country_code

    attr_accessor :from_postal_code

    attr_accessor :to_country_code

    attr_accessor :to_postal_code

    attr_accessor :to_city_locality

    attr_accessor :to_state_province

    attr_accessor :weight

    attr_accessor :dimensions

    attr_accessor :confirmation

    attr_accessor :address_residential_indicator

    attr_accessor :ship_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'carrier_id' => :'carrier_id',
        :'carrier_ids' => :'carrier_ids',
        :'from_country_code' => :'from_country_code',
        :'from_postal_code' => :'from_postal_code',
        :'to_country_code' => :'to_country_code',
        :'to_postal_code' => :'to_postal_code',
        :'to_city_locality' => :'to_city_locality',
        :'to_state_province' => :'to_state_province',
        :'weight' => :'weight',
        :'dimensions' => :'dimensions',
        :'confirmation' => :'confirmation',
        :'address_residential_indicator' => :'address_residential_indicator',
        :'ship_date' => :'ship_date'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'carrier_id' => :'String',
        :'carrier_ids' => :'Array<String>',
        :'from_country_code' => :'String',
        :'from_postal_code' => :'String',
        :'to_country_code' => :'String',
        :'to_postal_code' => :'String',
        :'to_city_locality' => :'String',
        :'to_state_province' => :'String',
        :'weight' => :'Weight',
        :'dimensions' => :'Dimensions',
        :'confirmation' => :'Confirmation',
        :'address_residential_indicator' => :'AddressResidentialIndicator',
        :'ship_date' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'carrier_id')
        self.carrier_id = attributes[:'carrier_id']
      end

      if attributes.has_key?(:'carrier_ids')
        if (value = attributes[:'carrier_ids']).is_a?(Array)
          self.carrier_ids = value
        end
      end

      if attributes.has_key?(:'from_country_code')
        self.from_country_code = attributes[:'from_country_code']
      end

      if attributes.has_key?(:'from_postal_code')
        self.from_postal_code = attributes[:'from_postal_code']
      end

      if attributes.has_key?(:'to_country_code')
        self.to_country_code = attributes[:'to_country_code']
      end

      if attributes.has_key?(:'to_postal_code')
        self.to_postal_code = attributes[:'to_postal_code']
      end

      if attributes.has_key?(:'to_city_locality')
        self.to_city_locality = attributes[:'to_city_locality']
      end

      if attributes.has_key?(:'to_state_province')
        self.to_state_province = attributes[:'to_state_province']
      end

      if attributes.has_key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.has_key?(:'dimensions')
        self.dimensions = attributes[:'dimensions']
      end

      if attributes.has_key?(:'confirmation')
        self.confirmation = attributes[:'confirmation']
      end

      if attributes.has_key?(:'address_residential_indicator')
        self.address_residential_indicator = attributes[:'address_residential_indicator']
      end

      if attributes.has_key?(:'ship_date')
        self.ship_date = attributes[:'ship_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@carrier_id.nil? && @carrier_id.to_s.length > 25
        invalid_properties.push('invalid value for "carrier_id", the character length must be smaller than or equal to 25.')
      end

      if !@carrier_id.nil? && @carrier_id.to_s.length < 1
        invalid_properties.push('invalid value for "carrier_id", the character length must be great than or equal to 1.')
      end

      if !@carrier_id.nil? && @carrier_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        invalid_properties.push('invalid value for "carrier_id", must conform to the pattern /^se(-[a-z0-9]+)+$/.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@carrier_id.nil? && @carrier_id.to_s.length > 25
      return false if !@carrier_id.nil? && @carrier_id.to_s.length < 1
      return false if !@carrier_id.nil? && @carrier_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] carrier_id Value to be assigned
    def carrier_id=(carrier_id)
      if !carrier_id.nil? && carrier_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "carrier_id", the character length must be smaller than or equal to 25.'
      end

      if !carrier_id.nil? && carrier_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "carrier_id", the character length must be great than or equal to 1.'
      end

      if !carrier_id.nil? && carrier_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, 'invalid value for "carrier_id", must conform to the pattern /^se(-[a-z0-9]+)+$/.'
      end

      @carrier_id = carrier_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          carrier_id == o.carrier_id &&
          carrier_ids == o.carrier_ids &&
          from_country_code == o.from_country_code &&
          from_postal_code == o.from_postal_code &&
          to_country_code == o.to_country_code &&
          to_postal_code == o.to_postal_code &&
          to_city_locality == o.to_city_locality &&
          to_state_province == o.to_state_province &&
          weight == o.weight &&
          dimensions == o.dimensions &&
          confirmation == o.confirmation &&
          address_residential_indicator == o.address_residential_indicator &&
          ship_date == o.ship_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [carrier_id, carrier_ids, from_country_code, from_postal_code, to_country_code, to_postal_code, to_city_locality, to_state_province, weight, dimensions, confirmation, address_residential_indicator, ship_date].hash
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
