# ShipEngineApi::ShipmentsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_shipments_by_shipment_id_get**](ShipmentsApi.md#v1_shipments_by_shipment_id_get) | **GET** /v1/shipments/{shipment_id} | shipments.get_by_id
[**v1_shipments_by_shipment_id_put**](ShipmentsApi.md#v1_shipments_by_shipment_id_put) | **PUT** /v1/shipments/{shipment_id} | shipments.update_shipment
[**v1_shipments_cancel_by_shipment_id_put**](ShipmentsApi.md#v1_shipments_cancel_by_shipment_id_put) | **PUT** /v1/shipments/{shipment_id}/cancel | shipments.cancel
[**v1_shipments_errors_by_shipment_id_get**](ShipmentsApi.md#v1_shipments_errors_by_shipment_id_get) | **GET** /v1/shipments/{shipment_id}/errors | shipments.find_errors
[**v1_shipments_external_shipment_id_by_external_shipment_id_get**](ShipmentsApi.md#v1_shipments_external_shipment_id_by_external_shipment_id_get) | **GET** /v1/shipments/external_shipment_id/{external_shipment_id} | shipments.get_by_external_id
[**v1_shipments_get**](ShipmentsApi.md#v1_shipments_get) | **GET** /v1/shipments | shipments.find
[**v1_shipments_post**](ShipmentsApi.md#v1_shipments_post) | **POST** /v1/shipments | shipments.create_shipments
[**v1_shipments_rates_by_shipment_id_get**](ShipmentsApi.md#v1_shipments_rates_by_shipment_id_get) | **GET** /v1/shipments/{shipment_id}/rates | shipments.get_rates_for_shipment
[**v1_shipments_tags_by_shipment_id_and_tag_delete**](ShipmentsApi.md#v1_shipments_tags_by_shipment_id_and_tag_delete) | **DELETE** /v1/shipments/{shipment_id}/tags/{tag} | shipments.remove_tag
[**v1_shipments_tags_by_shipment_id_and_tag_post**](ShipmentsApi.md#v1_shipments_tags_by_shipment_id_and_tag_post) | **POST** /v1/shipments/{shipment_id}/tags/{tag} | shipments.add_tag


# **v1_shipments_by_shipment_id_get**
> Shipment v1_shipments_by_shipment_id_get(shipment_id)

shipments.get_by_id



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = 'shipment_id_example' # String | 


begin
  #shipments.get_by_id
  result = api_instance.v1_shipments_by_shipment_id_get(shipment_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->v1_shipments_by_shipment_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_shipments_by_shipment_id_put**
> CreateShipmentResponseBody v1_shipments_by_shipment_id_put(shipment_id, body)

shipments.update_shipment



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = 'shipment_id_example' # String | 

body = ShipEngineApi::AddressValidatingShipment.new # AddressValidatingShipment | 


begin
  #shipments.update_shipment
  result = api_instance.v1_shipments_by_shipment_id_put(shipment_id, body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->v1_shipments_by_shipment_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **body** | [**AddressValidatingShipment**](AddressValidatingShipment.md)|  | 

### Return type

[**CreateShipmentResponseBody**](CreateShipmentResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_shipments_cancel_by_shipment_id_put**
> v1_shipments_cancel_by_shipment_id_put(shipment_id)

shipments.cancel



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = 'shipment_id_example' # String | 


begin
  #shipments.cancel
  api_instance.v1_shipments_cancel_by_shipment_id_put(shipment_id)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->v1_shipments_cancel_by_shipment_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_shipments_errors_by_shipment_id_get**
> ShipmentErrorsResponseBody v1_shipments_errors_by_shipment_id_get(shipment_id, opts)

shipments.find_errors



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = 'shipment_id_example' # String | 

opts = { 
  page: 56, # Integer | 
  pagesize: 56 # Integer | 
}

begin
  #shipments.find_errors
  result = api_instance.v1_shipments_errors_by_shipment_id_get(shipment_id, opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->v1_shipments_errors_by_shipment_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **page** | **Integer**|  | [optional] 
 **pagesize** | **Integer**|  | [optional] 

### Return type

[**ShipmentErrorsResponseBody**](ShipmentErrorsResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_shipments_external_shipment_id_by_external_shipment_id_get**
> Shipment v1_shipments_external_shipment_id_by_external_shipment_id_get(external_shipment_id)

shipments.get_by_external_id



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

api_instance = ShipEngineApi::ShipmentsApi.new

external_shipment_id = 'external_shipment_id_example' # String | 


begin
  #shipments.get_by_external_id
  result = api_instance.v1_shipments_external_shipment_id_by_external_shipment_id_get(external_shipment_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->v1_shipments_external_shipment_id_by_external_shipment_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_shipment_id** | **String**|  | 

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_shipments_get**
> ListShipmentResponseBody v1_shipments_get(opts)

shipments.find



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

api_instance = ShipEngineApi::ShipmentsApi.new

opts = { 
  batch_id: 'batch_id_example', # String | 
  tag: 'tag_example', # String | 
  shipment_status: 'shipment_status_example', # String | 
  modified_at_start: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  modified_at_end: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  created_at_start: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  created_at_end: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  page: 56, # Integer | 
  page_size: 56, # Integer | 
  sort_dir: 'sort_dir_example', # String | 
  sort_by: 'sort_by_example' # String | 
}

begin
  #shipments.find
  result = api_instance.v1_shipments_get(opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->v1_shipments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | [optional] 
 **tag** | **String**|  | [optional] 
 **shipment_status** | **String**|  | [optional] 
 **modified_at_start** | **DateTime**|  | [optional] 
 **modified_at_end** | **DateTime**|  | [optional] 
 **created_at_start** | **DateTime**|  | [optional] 
 **created_at_end** | **DateTime**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 
 **sort_dir** | **String**|  | [optional] 
 **sort_by** | **String**|  | [optional] 

### Return type

[**ListShipmentResponseBody**](ListShipmentResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_shipments_post**
> CreateShipmentsResponseBody v1_shipments_post(body)

shipments.create_shipments



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

api_instance = ShipEngineApi::ShipmentsApi.new

body = ShipEngineApi::CreateShipmentsRequestBody.new # CreateShipmentsRequestBody | 


begin
  #shipments.create_shipments
  result = api_instance.v1_shipments_post(body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->v1_shipments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateShipmentsRequestBody**](CreateShipmentsRequestBody.md)|  | 

### Return type

[**CreateShipmentsResponseBody**](CreateShipmentsResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_shipments_rates_by_shipment_id_get**
> RateResponseBody v1_shipments_rates_by_shipment_id_get(shipment_id, opts)

shipments.get_rates_for_shipment



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = 'shipment_id_example' # String | 

opts = { 
  created_at_start: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
}

begin
  #shipments.get_rates_for_shipment
  result = api_instance.v1_shipments_rates_by_shipment_id_get(shipment_id, opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->v1_shipments_rates_by_shipment_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **created_at_start** | **DateTime**|  | [optional] 

### Return type

[**RateResponseBody**](RateResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_shipments_tags_by_shipment_id_and_tag_delete**
> v1_shipments_tags_by_shipment_id_and_tag_delete(shipment_id, tag)

shipments.remove_tag



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = 'shipment_id_example' # String | 

tag = 'tag_example' # String | 


begin
  #shipments.remove_tag
  api_instance.v1_shipments_tags_by_shipment_id_and_tag_delete(shipment_id, tag)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->v1_shipments_tags_by_shipment_id_and_tag_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **tag** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_shipments_tags_by_shipment_id_and_tag_post**
> ShipmentAddTagResponseBody v1_shipments_tags_by_shipment_id_and_tag_post(shipment_id, tag)

shipments.add_tag



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

api_instance = ShipEngineApi::ShipmentsApi.new

shipment_id = 'shipment_id_example' # String | 

tag = 'tag_example' # String | 


begin
  #shipments.add_tag
  result = api_instance.v1_shipments_tags_by_shipment_id_and_tag_post(shipment_id, tag)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ShipmentsApi->v1_shipments_tags_by_shipment_id_and_tag_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **tag** | **String**|  | 

### Return type

[**ShipmentAddTagResponseBody**](ShipmentAddTagResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



