# ShipEngineApi::TrackingApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_tracking_get**](TrackingApi.md#v1_tracking_get) | **GET** /v1/tracking | tracking.track
[**v1_tracking_start_post**](TrackingApi.md#v1_tracking_start_post) | **POST** /v1/tracking/start | tracking.start_tracking
[**v1_tracking_stop_post**](TrackingApi.md#v1_tracking_stop_post) | **POST** /v1/tracking/stop | tracking.stop_tracking


# **v1_tracking_get**
> TrackingInformationResponseBody v1_tracking_get(opts)

tracking.track



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

api_instance = ShipEngineApi::TrackingApi.new

opts = { 
  carrier_code: 'carrier_code_example', # String | 
  tracking_number: 'tracking_number_example' # String | 
}

begin
  #tracking.track
  result = api_instance.v1_tracking_get(opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling TrackingApi->v1_tracking_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_code** | **String**|  | [optional] 
 **tracking_number** | **String**|  | [optional] 

### Return type

[**TrackingInformationResponseBody**](TrackingInformationResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_tracking_start_post**
> v1_tracking_start_post(opts)

tracking.start_tracking



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

api_instance = ShipEngineApi::TrackingApi.new

opts = { 
  carrier_code: 'carrier_code_example', # String | 
  tracking_number: 'tracking_number_example' # String | 
}

begin
  #tracking.start_tracking
  api_instance.v1_tracking_start_post(opts)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling TrackingApi->v1_tracking_start_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_code** | **String**|  | [optional] 
 **tracking_number** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_tracking_stop_post**
> v1_tracking_stop_post(opts)

tracking.stop_tracking



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

api_instance = ShipEngineApi::TrackingApi.new

opts = { 
  carrier_code: 'carrier_code_example', # String | 
  tracking_number: 'tracking_number_example' # String | 
}

begin
  #tracking.stop_tracking
  api_instance.v1_tracking_stop_post(opts)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling TrackingApi->v1_tracking_stop_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_code** | **String**|  | [optional] 
 **tracking_number** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



