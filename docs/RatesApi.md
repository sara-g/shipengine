# ShipEngineApi::RatesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_rates_bulk_post**](RatesApi.md#v1_rates_bulk_post) | **POST** /v1/rates/bulk | rates.bulk_rate_shipments
[**v1_rates_by_rate_id_get**](RatesApi.md#v1_rates_by_rate_id_get) | **GET** /v1/rates/{rate_id} | rates.get_by_id
[**v1_rates_estimate_post**](RatesApi.md#v1_rates_estimate_post) | **POST** /v1/rates/estimate | rates.estimate
[**v1_rates_post**](RatesApi.md#v1_rates_post) | **POST** /v1/rates | rates.rate_shipment


# **v1_rates_bulk_post**
> Array&lt;BulkRateResponseBody&gt; v1_rates_bulk_post(body)

rates.bulk_rate_shipments



### Example
```ruby
# load the gem
require 'shipengine_api'
# setup authorization
ShipEngineApi.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = ShipEngineApi::RatesApi.new

body = ShipEngineApi::RateShipmentsRequestBody.new # RateShipmentsRequestBody | 


begin
  #rates.bulk_rate_shipments
  result = api_instance.v1_rates_bulk_post(body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling RatesApi->v1_rates_bulk_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RateShipmentsRequestBody**](RateShipmentsRequestBody.md)|  | 

### Return type

[**Array&lt;BulkRateResponseBody&gt;**](BulkRateResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_rates_by_rate_id_get**
> Rate v1_rates_by_rate_id_get(rate_id)

rates.get_by_id



### Example
```ruby
# load the gem
require 'shipengine_api'
# setup authorization
ShipEngineApi.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = ShipEngineApi::RatesApi.new

rate_id = 'rate_id_example' # String | 


begin
  #rates.get_by_id
  result = api_instance.v1_rates_by_rate_id_get(rate_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling RatesApi->v1_rates_by_rate_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_id** | **String**|  | 

### Return type

[**Rate**](Rate.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_rates_estimate_post**
> Array&lt;Rate&gt; v1_rates_estimate_post(body)

rates.estimate



### Example
```ruby
# load the gem
require 'shipengine_api'
# setup authorization
ShipEngineApi.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = ShipEngineApi::RatesApi.new

body = ShipEngineApi::RateEstimateRequestBody.new # RateEstimateRequestBody | 


begin
  #rates.estimate
  result = api_instance.v1_rates_estimate_post(body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling RatesApi->v1_rates_estimate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RateEstimateRequestBody**](RateEstimateRequestBody.md)|  | 

### Return type

[**Array&lt;Rate&gt;**](Rate.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_rates_post**
> RateShipmentResponseBody v1_rates_post(body)

rates.rate_shipment



### Example
```ruby
# load the gem
require 'shipengine_api'
# setup authorization
ShipEngineApi.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = ShipEngineApi::RatesApi.new

body = ShipEngineApi::RateShipmentRequestBody.new # RateShipmentRequestBody | 


begin
  #rates.rate_shipment
  result = api_instance.v1_rates_post(body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling RatesApi->v1_rates_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RateShipmentRequestBody**](RateShipmentRequestBody.md)|  | 

### Return type

[**RateShipmentResponseBody**](RateShipmentResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



