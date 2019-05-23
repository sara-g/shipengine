# ShipEngineApi::ManifestsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_manifests_by_manifest_id_get**](ManifestsApi.md#v1_manifests_by_manifest_id_get) | **GET** /v1/manifests/{manifest_id} | manifests.get_by_id
[**v1_manifests_get**](ManifestsApi.md#v1_manifests_get) | **GET** /v1/manifests | manifests.find
[**v1_manifests_post**](ManifestsApi.md#v1_manifests_post) | **POST** /v1/manifests | manifests.create


# **v1_manifests_by_manifest_id_get**
> ManifestResponseBody v1_manifests_by_manifest_id_get(manifest_id)

manifests.get_by_id



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

api_instance = ShipEngineApi::ManifestsApi.new

manifest_id = 'manifest_id_example' # String | 


begin
  #manifests.get_by_id
  result = api_instance.v1_manifests_by_manifest_id_get(manifest_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ManifestsApi->v1_manifests_by_manifest_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifest_id** | **String**|  | 

### Return type

[**ManifestResponseBody**](ManifestResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_manifests_get**
> ListManifestsResponseBody v1_manifests_get(opts)

manifests.find



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

api_instance = ShipEngineApi::ManifestsApi.new

opts = { 
  warehouse_id: 'warehouse_id_example', # String | 
  ship_date_start: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  ship_date_end: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  created_at_start: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  created_at_end: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  carrier_id: 'carrier_id_example', # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  #manifests.find
  result = api_instance.v1_manifests_get(opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ManifestsApi->v1_manifests_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**|  | [optional] 
 **ship_date_start** | **DateTime**|  | [optional] 
 **ship_date_end** | **DateTime**|  | [optional] 
 **created_at_start** | **DateTime**|  | [optional] 
 **created_at_end** | **DateTime**|  | [optional] 
 **carrier_id** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**ListManifestsResponseBody**](ListManifestsResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_manifests_post**
> ManifestResponseBody v1_manifests_post(body)

manifests.create



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

api_instance = ShipEngineApi::ManifestsApi.new

body = ShipEngineApi::CreateManifestRequestBody.new # CreateManifestRequestBody | 


begin
  #manifests.create
  result = api_instance.v1_manifests_post(body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling ManifestsApi->v1_manifests_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateManifestRequestBody**](CreateManifestRequestBody.md)|  | 

### Return type

[**ManifestResponseBody**](ManifestResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



