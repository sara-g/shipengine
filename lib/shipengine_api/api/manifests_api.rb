=begin
#ShipEngine API

#ShipEngine™ is the world's best multi-carrier shipping API, with more than 20 supported shipping carriers.  You can easily get and compare shipping rates, print labels, track your shipments, and validate addresses anywhere in the world.  ### Worldwide Major Carrier Support Access the top global carriers in minutes—instead of weeks. Simply [connect your existing carrier accounts](https://docs.shipengine.com/docs/setup-a-carrier) in the API dashboard, and then [begin creating labels](https://docs.shipengine.com/docs/use-a-specific-service).  ### Real-Time Tracking [Track packages](https://docs.shipengine.com/docs/track-a-package) across any of our 20+ supported carrier accounts and create tracking events to keep your customers up-to-date. Easily integrate real-time tracking information for shipments into your app, email, or SMS.  ### Get Rates Across Carriers Make sure you ship as cost-effectively as possible by [quickly comparing rates](https://docs.shipengine.com/docs/get-shipping-rates) using the ShipEngine Rates API. As long as you have the carrier connected to your account, you'll be able to see and compare different rates and services.  ### Global Address Validation No matter your shipping volume, failed deliveries and address change surcharges cut into your bottom line and damage perception with customers. Our address validation services ensure your packages make it to the right place the first time. [Learn how to leverage our address validation services here.](https://docs.shipengine.com/docs/address-validation)  ShipEngine supports address validation for over 180 countries, including the United States, Canada, Great Britain, Australia, Germany, France, Norway, Spain, Sweden, Israel, Italy, and more. 

OpenAPI spec version: 1.0.0
Contact: sales@shipengine.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module ShipEngineApi
  class ManifestsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # manifests.get_by_id
    # 
    # @param manifest_id 
    # @param [Hash] opts the optional parameters
    # @return [ManifestResponseBody]
    def v1_manifests_by_manifest_id_get(manifest_id, opts = {})
      data, _status_code, _headers = v1_manifests_by_manifest_id_get_with_http_info(manifest_id, opts)
      data
    end

    # manifests.get_by_id
    # 
    # @param manifest_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManifestResponseBody, Fixnum, Hash)>] ManifestResponseBody data, response status code and response headers
    def v1_manifests_by_manifest_id_get_with_http_info(manifest_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManifestsApi.v1_manifests_by_manifest_id_get ...'
      end
      # verify the required parameter 'manifest_id' is set
      if @api_client.config.client_side_validation && manifest_id.nil?
        fail ArgumentError, "Missing the required parameter 'manifest_id' when calling ManifestsApi.v1_manifests_by_manifest_id_get"
      end
      if @api_client.config.client_side_validation && manifest_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "manifest_id" when calling ManifestsApi.v1_manifests_by_manifest_id_get, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && manifest_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "manifest_id" when calling ManifestsApi.v1_manifests_by_manifest_id_get, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && manifest_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'manifest_id' when calling ManifestsApi.v1_manifests_by_manifest_id_get, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      # resource path
      local_var_path = '/v1/manifests/{manifest_id}'.sub('{' + 'manifest_id' + '}', manifest_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManifestResponseBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManifestsApi#v1_manifests_by_manifest_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # manifests.find
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :warehouse_id 
    # @option opts [DateTime] :ship_date_start 
    # @option opts [DateTime] :ship_date_end 
    # @option opts [DateTime] :created_at_start 
    # @option opts [DateTime] :created_at_end 
    # @option opts [String] :carrier_id 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [ListManifestsResponseBody]
    def v1_manifests_get(opts = {})
      data, _status_code, _headers = v1_manifests_get_with_http_info(opts)
      data
    end

    # manifests.find
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :warehouse_id 
    # @option opts [DateTime] :ship_date_start 
    # @option opts [DateTime] :ship_date_end 
    # @option opts [DateTime] :created_at_start 
    # @option opts [DateTime] :created_at_end 
    # @option opts [String] :carrier_id 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(ListManifestsResponseBody, Fixnum, Hash)>] ListManifestsResponseBody data, response status code and response headers
    def v1_manifests_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManifestsApi.v1_manifests_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'warehouse_id'].nil? && opts[:'warehouse_id'].to_s.length > 25
        fail ArgumentError, 'invalid value for "opts[:"warehouse_id"]" when calling ManifestsApi.v1_manifests_get, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'warehouse_id'].nil? && opts[:'warehouse_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"warehouse_id"]" when calling ManifestsApi.v1_manifests_get, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'warehouse_id'].nil? && opts[:'warehouse_id'] !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'opts[:\"warehouse_id\"]' when calling ManifestsApi.v1_manifests_get, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      if @api_client.config.client_side_validation && !opts[:'carrier_id'].nil? && opts[:'carrier_id'].to_s.length > 25
        fail ArgumentError, 'invalid value for "opts[:"carrier_id"]" when calling ManifestsApi.v1_manifests_get, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'carrier_id'].nil? && opts[:'carrier_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"carrier_id"]" when calling ManifestsApi.v1_manifests_get, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'carrier_id'].nil? && opts[:'carrier_id'] !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'opts[:\"carrier_id\"]' when calling ManifestsApi.v1_manifests_get, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      # resource path
      local_var_path = '/v1/manifests'

      # query parameters
      query_params = {}
      query_params[:'warehouse_id'] = opts[:'warehouse_id'] if !opts[:'warehouse_id'].nil?
      query_params[:'ship_date_start'] = opts[:'ship_date_start'] if !opts[:'ship_date_start'].nil?
      query_params[:'ship_date_end'] = opts[:'ship_date_end'] if !opts[:'ship_date_end'].nil?
      query_params[:'created_at_start'] = opts[:'created_at_start'] if !opts[:'created_at_start'].nil?
      query_params[:'created_at_end'] = opts[:'created_at_end'] if !opts[:'created_at_end'].nil?
      query_params[:'carrier_id'] = opts[:'carrier_id'] if !opts[:'carrier_id'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListManifestsResponseBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManifestsApi#v1_manifests_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # manifests.create
    # 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ManifestResponseBody]
    def v1_manifests_post(body, opts = {})
      data, _status_code, _headers = v1_manifests_post_with_http_info(body, opts)
      data
    end

    # manifests.create
    # 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManifestResponseBody, Fixnum, Hash)>] ManifestResponseBody data, response status code and response headers
    def v1_manifests_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManifestsApi.v1_manifests_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManifestsApi.v1_manifests_post"
      end
      # resource path
      local_var_path = '/v1/manifests'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManifestResponseBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManifestsApi#v1_manifests_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end