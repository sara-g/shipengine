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
  class RatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # rates.bulk_rate_shipments
    # 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<BulkRateResponseBody>]
    def v1_rates_bulk_post(body, opts = {})
      data, _status_code, _headers = v1_rates_bulk_post_with_http_info(body, opts)
      data
    end

    # rates.bulk_rate_shipments
    # 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<BulkRateResponseBody>, Fixnum, Hash)>] Array<BulkRateResponseBody> data, response status code and response headers
    def v1_rates_bulk_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RatesApi.v1_rates_bulk_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RatesApi.v1_rates_bulk_post"
      end
      # resource path
      local_var_path = '/v1/rates/bulk'

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
        :return_type => 'Array<BulkRateResponseBody>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatesApi#v1_rates_bulk_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # rates.get_by_id
    # 
    # @param rate_id 
    # @param [Hash] opts the optional parameters
    # @return [Rate]
    def v1_rates_by_rate_id_get(rate_id, opts = {})
      data, _status_code, _headers = v1_rates_by_rate_id_get_with_http_info(rate_id, opts)
      data
    end

    # rates.get_by_id
    # 
    # @param rate_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Rate, Fixnum, Hash)>] Rate data, response status code and response headers
    def v1_rates_by_rate_id_get_with_http_info(rate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RatesApi.v1_rates_by_rate_id_get ...'
      end
      # verify the required parameter 'rate_id' is set
      if @api_client.config.client_side_validation && rate_id.nil?
        fail ArgumentError, "Missing the required parameter 'rate_id' when calling RatesApi.v1_rates_by_rate_id_get"
      end
      if @api_client.config.client_side_validation && rate_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "rate_id" when calling RatesApi.v1_rates_by_rate_id_get, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && rate_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "rate_id" when calling RatesApi.v1_rates_by_rate_id_get, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && rate_id !~ Regexp.new(/^se(-[a-z0-9]+)+$/)
        fail ArgumentError, "invalid value for 'rate_id' when calling RatesApi.v1_rates_by_rate_id_get, must conform to the pattern /^se(-[a-z0-9]+)+$/."
      end

      # resource path
      local_var_path = '/v1/rates/{rate_id}'.sub('{' + 'rate_id' + '}', rate_id.to_s)

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
        :return_type => 'Rate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatesApi#v1_rates_by_rate_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # rates.estimate
    # 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<Rate>]
    def v1_rates_estimate_post(body, opts = {})
      data, _status_code, _headers = v1_rates_estimate_post_with_http_info(body, opts)
      data
    end

    # rates.estimate
    # 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Rate>, Fixnum, Hash)>] Array<Rate> data, response status code and response headers
    def v1_rates_estimate_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RatesApi.v1_rates_estimate_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RatesApi.v1_rates_estimate_post"
      end
      # resource path
      local_var_path = '/v1/rates/estimate'

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
        :return_type => 'Array<Rate>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatesApi#v1_rates_estimate_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # rates.rate_shipment
    # 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [RateShipmentResponseBody]
    def v1_rates_post(body, opts = {})
      data, _status_code, _headers = v1_rates_post_with_http_info(body, opts)
      data
    end

    # rates.rate_shipment
    # 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RateShipmentResponseBody, Fixnum, Hash)>] RateShipmentResponseBody data, response status code and response headers
    def v1_rates_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RatesApi.v1_rates_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RatesApi.v1_rates_post"
      end
      # resource path
      local_var_path = '/v1/rates'

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
        :return_type => 'RateShipmentResponseBody')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RatesApi#v1_rates_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end