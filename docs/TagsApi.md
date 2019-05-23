# ShipEngineApi::TagsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_tags_by_tag_name_and_new_name_put**](TagsApi.md#v1_tags_by_tag_name_and_new_name_put) | **PUT** /v1/tags/{tag_name}/{new_name} | tags.update_tag
[**v1_tags_by_tag_name_delete**](TagsApi.md#v1_tags_by_tag_name_delete) | **DELETE** /v1/tags/{tag_name} | tags.delete
[**v1_tags_by_tag_name_post**](TagsApi.md#v1_tags_by_tag_name_post) | **POST** /v1/tags/{tag_name} | tags.add_tag
[**v1_tags_get**](TagsApi.md#v1_tags_get) | **GET** /v1/tags | tags.find_tags


# **v1_tags_by_tag_name_and_new_name_put**
> v1_tags_by_tag_name_and_new_name_put(tag_name, new_name)

tags.update_tag



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

api_instance = ShipEngineApi::TagsApi.new

tag_name = 'tag_name_example' # String | 

new_name = 'new_name_example' # String | 


begin
  #tags.update_tag
  api_instance.v1_tags_by_tag_name_and_new_name_put(tag_name, new_name)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling TagsApi->v1_tags_by_tag_name_and_new_name_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_name** | **String**|  | 
 **new_name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_tags_by_tag_name_delete**
> ListTagResponseBody v1_tags_by_tag_name_delete(tag_name)

tags.delete



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

api_instance = ShipEngineApi::TagsApi.new

tag_name = 'tag_name_example' # String | 


begin
  #tags.delete
  result = api_instance.v1_tags_by_tag_name_delete(tag_name)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling TagsApi->v1_tags_by_tag_name_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_name** | **String**|  | 

### Return type

[**ListTagResponseBody**](ListTagResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_tags_by_tag_name_post**
> TagResponseBody v1_tags_by_tag_name_post(tag_name)

tags.add_tag



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

api_instance = ShipEngineApi::TagsApi.new

tag_name = 'tag_name_example' # String | 


begin
  #tags.add_tag
  result = api_instance.v1_tags_by_tag_name_post(tag_name)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling TagsApi->v1_tags_by_tag_name_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_name** | **String**|  | 

### Return type

[**TagResponseBody**](TagResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_tags_get**
> ListTagResponseBody v1_tags_get

tags.find_tags



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

api_instance = ShipEngineApi::TagsApi.new

begin
  #tags.find_tags
  result = api_instance.v1_tags_get
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling TagsApi->v1_tags_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListTagResponseBody**](ListTagResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



