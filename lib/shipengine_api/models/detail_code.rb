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
  class DetailCode
    
    NON_SUPPORTED_COUNTRY = 'non_supported_country'.freeze
    MINIMUM_POSTAL_CODE_VERIFICATION_FAILED = 'minimum_postal_code_verification_failed'.freeze
    STREET_DOES_NOT_MATCH_UNIQUE_STREET_NAME = 'street_does_not_match_unique_street_name'.freeze
    MULTIPLE_DIRECTIONALS = 'multiple_directionals'.freeze
    MULTIPLE_MATCHES = 'multiple_matches'.freeze
    SUITE_NOT_VALID = 'suite_not_valid'.freeze
    SUITE_MISSING = 'suite_missing'.freeze
    INVALID_HOUSE_NUMBER = 'invalid_house_number'.freeze
    MISSING_HOUSE_NUMBER = 'missing_house_number'.freeze
    INVALID_BOX_NUMBER = 'invalid_box_number'.freeze
    MISSING_BOX_NUMBER = 'missing_box_number'.freeze
    MISSING_CMRA_OR_PRIVATE_MAIL_BOX_NUMBER = 'missing_cmra_or_private_mail_box_number'.freeze
    SUITE_HAS_NO_SECONDARIES = 'suite_has_no_secondaries'.freeze
    POSTAL_CODE_CHANGED_OR_ADDED = 'postal_code_changed_or_added'.freeze
    STATE_PROVINCE_CHANGED_OR_ADDED = 'state_province_changed_or_added'.freeze
    CITY_LOCALITY_CHANGED_OR_ADDED = 'city_locality_changed_or_added'.freeze
    URBANIZATION_CHANGED = 'urbanization_changed'.freeze
    STREET_NAME_SPELLING_CHANGED_OR_ADDED = 'street_name_spelling_changed_or_added'.freeze
    STREET_NAME_TYPE_CHANGED_OR_ADDED = 'street_name_type_changed_or_added'.freeze
    STREET_DIRECTION_CHANGED_OR_ADDED = 'street_direction_changed_or_added'.freeze
    SUITE_TYPE_CHANGED_OR_ADDED = 'suite_type_changed_or_added'.freeze
    SUITE_UNIT_NUMBER_CHANGED_OR_ADDED = 'suite_unit_number_changed_or_added'.freeze
    DOUBLE_DEPENDENT_LOCALITY_CHANGED_OR_ADDED = 'double_dependent_locality_changed_or_added'.freeze
    SUBADMINISTRATIVE_AREA_CHANGED_OR_ADDED = 'subadministrative_area_changed_or_added'.freeze
    SUBNATIONAL_AREA_CHANGED_OR_ADDED = 'subnational_area_changed_or_added'.freeze
    P_O_BOX_CHANGED_OR_ADDED = 'p_o_box_changed_or_added'.freeze
    PREMISE_TYPE_CHANGED_OR_ADDED = 'premise_type_changed_or_added'.freeze
    HOUSE_NUMBER_CHANGED = 'house_number_changed'.freeze
    ORGANIZATION_CHANGED_OR_ADDED = 'organization_changed_or_added'.freeze
    PARTIALLY_VERIFIED_TO_STATE_LEVEL = 'partially_verified_to_state_level'.freeze
    PARTIALLY_VERIFIED_TO_CITY_LEVEL = 'partially_verified_to_city_level'.freeze
    PARTIALLY_VERIFIED_TO_STREET_LEVEL = 'partially_verified_to_street_level'.freeze
    PARTIALLY_VERIFIED_TO_PREMISE_LEVEL = 'partially_verified_to_premise_level'.freeze
    VERIFIED_TO_STATE_LEVEL = 'verified_to_state_level'.freeze
    VERIFIED_TO_CITY_LEVEL = 'verified_to_city_level'.freeze
    VERIFIED_TO_STREET_LEVEL = 'verified_to_street_level'.freeze
    VERIFIED_TO_PREMISE_LEVEL = 'verified_to_premise_level'.freeze
    VERIFIED_TO_SUITE_LEVEL = 'verified_to_suite_level'.freeze
    CODED_TO_STREET_LAVEL = 'coded_to_street_lavel'.freeze
    CODED_TO_NEIGHBORHOOD_LEVEL = 'coded_to_neighborhood_level'.freeze
    CODED_TO_COMMUNITY_LEVEL = 'coded_to_community_level'.freeze
    CODED_TO_STATE_LEVEL = 'coded_to_state_level'.freeze
    CODED_TO_ROOFTOP_LEVEL = 'coded_to_rooftop_level'.freeze
    CODED_TO_ROOFTOP_INTERPOLATION_LEVEL = 'coded_to_rooftop_interpolation_level'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = DetailCode.constants.select { |c| DetailCode::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #DetailCode" if constantValues.empty?
      value
    end
  end
end
