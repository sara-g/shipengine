# ShipEngineApi::CarriersApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_carriers_add_funds_by_carrier_id_put**](CarriersApi.md#v1_carriers_add_funds_by_carrier_id_put) | **PUT** /v1/carriers/{carrier_id}/add_funds | carriers.add_funds
[**v1_carriers_by_carrier_id_get**](CarriersApi.md#v1_carriers_by_carrier_id_get) | **GET** /v1/carriers/{carrier_id} | carriers.get_by_id
[**v1_carriers_get**](CarriersApi.md#v1_carriers_get) | **GET** /v1/carriers | carriers.find
[**v1_carriers_options_by_carrier_id_get**](CarriersApi.md#v1_carriers_options_by_carrier_id_get) | **GET** /v1/carriers/{carrier_id}/options | carriers.get_options
[**v1_carriers_packages_by_carrier_id_get**](CarriersApi.md#v1_carriers_packages_by_carrier_id_get) | **GET** /v1/carriers/{carrier_id}/packages | carriers.find_packages
[**v1_carriers_services_by_carrier_id_get**](CarriersApi.md#v1_carriers_services_by_carrier_id_get) | **GET** /v1/carriers/{carrier_id}/services | carriers.find_services


# **v1_carriers_add_funds_by_carrier_id_put**
> BalanceResponseBody v1_carriers_add_funds_by_carrier_id_put(carrier_id, body)

carriers.add_funds



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

api_instance = ShipEngineApi::CarriersApi.new

carrier_id = 'carrier_id_example' # String | 

body = ShipEngineApi::Money.new # Money | 


begin
  #carriers.add_funds
  result = api_instance.v1_carriers_add_funds_by_carrier_id_put(carrier_id, body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarriersApi->v1_carriers_add_funds_by_carrier_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 
 **body** | [**Money**](Money.md)|  | 

### Return type

[**BalanceResponseBody**](BalanceResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_carriers_by_carrier_id_get**
> Carrier v1_carriers_by_carrier_id_get(carrier_id)

carriers.get_by_id



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

api_instance = ShipEngineApi::CarriersApi.new

carrier_id = 'carrier_id_example' # String | 


begin
  #carriers.get_by_id
  result = api_instance.v1_carriers_by_carrier_id_get(carrier_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarriersApi->v1_carriers_by_carrier_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

[**Carrier**](Carrier.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_carriers_get**
> CarrierListResponseBody v1_carriers_get

carriers.find



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

api_instance = ShipEngineApi::CarriersApi.new

begin
  #carriers.find
  result = api_instance.v1_carriers_get
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarriersApi->v1_carriers_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CarrierListResponseBody**](CarrierListResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_carriers_options_by_carrier_id_get**
> CarrierListOptionsResponseBody v1_carriers_options_by_carrier_id_get(carrier_id)

carriers.get_options



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

api_instance = ShipEngineApi::CarriersApi.new

carrier_id = 'carrier_id_example' # String | 


begin
  #carriers.get_options
  result = api_instance.v1_carriers_options_by_carrier_id_get(carrier_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarriersApi->v1_carriers_options_by_carrier_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

[**CarrierListOptionsResponseBody**](CarrierListOptionsResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_carriers_packages_by_carrier_id_get**
> PackageListResponseBody v1_carriers_packages_by_carrier_id_get(carrier_id)

carriers.find_packages



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

api_instance = ShipEngineApi::CarriersApi.new

carrier_id = 'carrier_id_example' # String | 


begin
  #carriers.find_packages
  result = api_instance.v1_carriers_packages_by_carrier_id_get(carrier_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarriersApi->v1_carriers_packages_by_carrier_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

[**PackageListResponseBody**](PackageListResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_carriers_services_by_carrier_id_get**
> CarrierListServicesResponseBody v1_carriers_services_by_carrier_id_get(carrier_id)

carriers.find_services



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

api_instance = ShipEngineApi::CarriersApi.new

carrier_id = 'carrier_id_example' # String | 


begin
  #carriers.find_services
  result = api_instance.v1_carriers_services_by_carrier_id_get(carrier_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling CarriersApi->v1_carriers_services_by_carrier_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**|  | 

### Return type

[**CarrierListServicesResponseBody**](CarrierListServicesResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



