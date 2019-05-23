# ShipEngineApi::BatchesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_batches_add_by_batch_id_post**](BatchesApi.md#v1_batches_add_by_batch_id_post) | **POST** /v1/batches/{batch_id}/add | batches.add_to_batch
[**v1_batches_by_batch_id_get**](BatchesApi.md#v1_batches_by_batch_id_get) | **GET** /v1/batches/{batch_id} | batches.get_by_id
[**v1_batches_errors_by_batch_id_get**](BatchesApi.md#v1_batches_errors_by_batch_id_get) | **GET** /v1/batches/{batch_id}/errors | batches.find_errors
[**v1_batches_external_batch_id_by_external_batch_id_get**](BatchesApi.md#v1_batches_external_batch_id_by_external_batch_id_get) | **GET** /v1/batches/external_batch_id/{external_batch_id} | batches.get_by_external_id
[**v1_batches_get**](BatchesApi.md#v1_batches_get) | **GET** /v1/batches | batches.find
[**v1_batches_post**](BatchesApi.md#v1_batches_post) | **POST** /v1/batches | batches.create
[**v1_batches_process_labels_by_batch_id_post**](BatchesApi.md#v1_batches_process_labels_by_batch_id_post) | **POST** /v1/batches/{batch_id}/process/labels | batches.process
[**v1_batches_remove_by_batch_id_post**](BatchesApi.md#v1_batches_remove_by_batch_id_post) | **POST** /v1/batches/{batch_id}/remove | batches.remove_from_batch


# **v1_batches_add_by_batch_id_post**
> v1_batches_add_by_batch_id_post(batch_id, body)

batches.add_to_batch



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

api_instance = ShipEngineApi::BatchesApi.new

batch_id = 'batch_id_example' # String | 

body = ShipEngineApi::ModifyBatchRequestBody.new # ModifyBatchRequestBody | 


begin
  #batches.add_to_batch
  api_instance.v1_batches_add_by_batch_id_post(batch_id, body)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->v1_batches_add_by_batch_id_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **body** | [**ModifyBatchRequestBody**](ModifyBatchRequestBody.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_batches_by_batch_id_get**
> Batch v1_batches_by_batch_id_get(batch_id)

batches.get_by_id



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

api_instance = ShipEngineApi::BatchesApi.new

batch_id = 'batch_id_example' # String | 


begin
  #batches.get_by_id
  result = api_instance.v1_batches_by_batch_id_get(batch_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->v1_batches_by_batch_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 

### Return type

[**Batch**](Batch.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_batches_errors_by_batch_id_get**
> BatchErrorsResponseBody v1_batches_errors_by_batch_id_get(batch_id, opts)

batches.find_errors



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

api_instance = ShipEngineApi::BatchesApi.new

batch_id = 'batch_id_example' # String | 

opts = { 
  page: 56, # Integer | 
  pagesize: 56 # Integer | 
}

begin
  #batches.find_errors
  result = api_instance.v1_batches_errors_by_batch_id_get(batch_id, opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->v1_batches_errors_by_batch_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **page** | **Integer**|  | [optional] 
 **pagesize** | **Integer**|  | [optional] 

### Return type

[**BatchErrorsResponseBody**](BatchErrorsResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_batches_external_batch_id_by_external_batch_id_get**
> Batch v1_batches_external_batch_id_by_external_batch_id_get(external_batch_id)

batches.get_by_external_id



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

api_instance = ShipEngineApi::BatchesApi.new

external_batch_id = 'external_batch_id_example' # String | 


begin
  #batches.get_by_external_id
  result = api_instance.v1_batches_external_batch_id_by_external_batch_id_get(external_batch_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->v1_batches_external_batch_id_by_external_batch_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_batch_id** | **String**|  | 

### Return type

[**Batch**](Batch.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_batches_get**
> ListBatchResponseBody v1_batches_get(opts)

batches.find



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

api_instance = ShipEngineApi::BatchesApi.new

opts = { 
  status: 'status_example', # String | 
  page: 56, # Integer | 
  page_size: 56, # Integer | 
  sort_dir: 'sort_dir_example', # String | 
  sort_by: 'sort_by_example' # String | 
}

begin
  #batches.find
  result = api_instance.v1_batches_get(opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->v1_batches_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 
 **sort_dir** | **String**|  | [optional] 
 **sort_by** | **String**|  | [optional] 

### Return type

[**ListBatchResponseBody**](ListBatchResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_batches_post**
> Batch v1_batches_post(body)

batches.create



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

api_instance = ShipEngineApi::BatchesApi.new

body = ShipEngineApi::CreateBatchRequestBody.new # CreateBatchRequestBody | 


begin
  #batches.create
  result = api_instance.v1_batches_post(body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->v1_batches_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateBatchRequestBody**](CreateBatchRequestBody.md)|  | 

### Return type

[**Batch**](Batch.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_batches_process_labels_by_batch_id_post**
> v1_batches_process_labels_by_batch_id_post(batch_id, body)

batches.process



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

api_instance = ShipEngineApi::BatchesApi.new

batch_id = 'batch_id_example' # String | 

body = ShipEngineApi::ProcessBatchRequestBody.new # ProcessBatchRequestBody | 


begin
  #batches.process
  api_instance.v1_batches_process_labels_by_batch_id_post(batch_id, body)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->v1_batches_process_labels_by_batch_id_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **body** | [**ProcessBatchRequestBody**](ProcessBatchRequestBody.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_batches_remove_by_batch_id_post**
> v1_batches_remove_by_batch_id_post(batch_id, body)

batches.remove_from_batch



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

api_instance = ShipEngineApi::BatchesApi.new

batch_id = 'batch_id_example' # String | 

body = ShipEngineApi::ModifyBatchRequestBody.new # ModifyBatchRequestBody | 


begin
  #batches.remove_from_batch
  api_instance.v1_batches_remove_by_batch_id_post(batch_id, body)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling BatchesApi->v1_batches_remove_by_batch_id_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**|  | 
 **body** | [**ModifyBatchRequestBody**](ModifyBatchRequestBody.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



