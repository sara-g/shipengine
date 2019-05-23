# ShipEngineApi::PackagesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_packages_by_package_id_delete**](PackagesApi.md#v1_packages_by_package_id_delete) | **DELETE** /v1/packages/{package_id} | packages.delete
[**v1_packages_by_package_id_get**](PackagesApi.md#v1_packages_by_package_id_get) | **GET** /v1/packages/{package_id} | packages.get_by_id
[**v1_packages_by_package_id_put**](PackagesApi.md#v1_packages_by_package_id_put) | **PUT** /v1/packages/{package_id} | packages.update
[**v1_packages_get**](PackagesApi.md#v1_packages_get) | **GET** /v1/packages | packages.find
[**v1_packages_post**](PackagesApi.md#v1_packages_post) | **POST** /v1/packages | packages.create


# **v1_packages_by_package_id_delete**
> v1_packages_by_package_id_delete(package_id)

packages.delete



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

api_instance = ShipEngineApi::PackagesApi.new

package_id = 'package_id_example' # String | 


begin
  #packages.delete
  api_instance.v1_packages_by_package_id_delete(package_id)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling PackagesApi->v1_packages_by_package_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_packages_by_package_id_get**
> Package v1_packages_by_package_id_get(package_id)

packages.get_by_id



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

api_instance = ShipEngineApi::PackagesApi.new

package_id = 'package_id_example' # String | 


begin
  #packages.get_by_id
  result = api_instance.v1_packages_by_package_id_get(package_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling PackagesApi->v1_packages_by_package_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**|  | 

### Return type

[**Package**](Package.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_packages_by_package_id_put**
> v1_packages_by_package_id_put(package_id, body)

packages.update



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

api_instance = ShipEngineApi::PackagesApi.new

package_id = 'package_id_example' # String | 

body = ShipEngineApi::Package.new # Package | 


begin
  #packages.update
  api_instance.v1_packages_by_package_id_put(package_id, body)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling PackagesApi->v1_packages_by_package_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**|  | 
 **body** | [**Package**](Package.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_packages_get**
> PackageListResponseBody v1_packages_get

packages.find



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

api_instance = ShipEngineApi::PackagesApi.new

begin
  #packages.find
  result = api_instance.v1_packages_get
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling PackagesApi->v1_packages_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PackageListResponseBody**](PackageListResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_packages_post**
> Package v1_packages_post(body)

packages.create



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

api_instance = ShipEngineApi::PackagesApi.new

body = ShipEngineApi::Package.new # Package | 


begin
  #packages.create
  result = api_instance.v1_packages_post(body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling PackagesApi->v1_packages_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Package**](Package.md)|  | 

### Return type

[**Package**](Package.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



