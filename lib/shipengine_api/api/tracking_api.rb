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
  class TrackingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # tracking.track
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :carrier_code 
    # @option opts [String] :tracking_number 
    # @return [TrackingInformationResponseBody]
    def v1_tracking_get(opts = {})
      data, _status_code, _headers = v1_tracking_get_with_http_info(opts)
      data
    end

    # tracking.track
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :carrier_code 
    # @option opts [String] :tracking_number 
    # @return [Array<(TrackingInformationResponseBody, Fixnum, Hash)>] TrackingInformationResponseBody data, response status code and response headers
    def v1_tracking_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrackingApi.v1_tracking_get ...'
      end
      # resource path
      local_var_path = '/v1/tracking'

      # query parameters
      query_params = {}
      query_params[:'carrier_code'] = opts[:'carrier_code'] if !opts[:'carrier_code'].nil?
      query_params[:'tracking_number'] = opts[:'tracking_number'] if !opts[:'tracking_number'].nil?

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
        :return_type => 'TrackingInformationResponseBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrackingApi#v1_tracking_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # tracking.start_tracking
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :carrier_code 
    # @option opts [String] :tracking_number 
    # @return [nil]
    def v1_tracking_start_post(opts = {})
      v1_tracking_start_post_with_http_info(opts)
      nil
    end

    # tracking.start_tracking
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :carrier_code 
    # @option opts [String] :tracking_number 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1_tracking_start_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrackingApi.v1_tracking_start_post ...'
      end
      # resource path
      local_var_path = '/v1/tracking/start'

      # query parameters
      query_params = {}
      query_params[:'carrier_code'] = opts[:'carrier_code'] if !opts[:'carrier_code'].nil?
      query_params[:'tracking_number'] = opts[:'tracking_number'] if !opts[:'tracking_number'].nil?

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrackingApi#v1_tracking_start_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # tracking.stop_tracking
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :carrier_code 
    # @option opts [String] :tracking_number 
    # @return [nil]
    def v1_tracking_stop_post(opts = {})
      v1_tracking_stop_post_with_http_info(opts)
      nil
    end

    # tracking.stop_tracking
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :carrier_code 
    # @option opts [String] :tracking_number 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1_tracking_stop_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrackingApi.v1_tracking_stop_post ...'
      end
      # resource path
      local_var_path = '/v1/tracking/stop'

      # query parameters
      query_params = {}
      query_params[:'carrier_code'] = opts[:'carrier_code'] if !opts[:'carrier_code'].nil?
      query_params[:'tracking_number'] = opts[:'tracking_number'] if !opts[:'tracking_number'].nil?

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrackingApi#v1_tracking_stop_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
