# ShipEngineApi::EnvironmentApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_environment_webhooks_by_webhook_id_delete**](EnvironmentApi.md#v1_environment_webhooks_by_webhook_id_delete) | **DELETE** /v1/environment/webhooks/{webhook_id} | environment.delete_webhook
[**v1_environment_webhooks_by_webhook_id_get**](EnvironmentApi.md#v1_environment_webhooks_by_webhook_id_get) | **GET** /v1/environment/webhooks/{webhook_id} | environment.get_webhook_by_id
[**v1_environment_webhooks_by_webhook_id_put**](EnvironmentApi.md#v1_environment_webhooks_by_webhook_id_put) | **PUT** /v1/environment/webhooks/{webhook_id} | environment.update_webhook
[**v1_environment_webhooks_get**](EnvironmentApi.md#v1_environment_webhooks_get) | **GET** /v1/environment/webhooks | environment.webhooks
[**v1_environment_webhooks_post**](EnvironmentApi.md#v1_environment_webhooks_post) | **POST** /v1/environment/webhooks | environment.create_webhook


# **v1_environment_webhooks_by_webhook_id_delete**
> v1_environment_webhooks_by_webhook_id_delete(webhook_id)

environment.delete_webhook



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

api_instance = ShipEngineApi::EnvironmentApi.new

webhook_id = 'webhook_id_example' # String | 


begin
  #environment.delete_webhook
  api_instance.v1_environment_webhooks_by_webhook_id_delete(webhook_id)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->v1_environment_webhooks_by_webhook_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_environment_webhooks_by_webhook_id_get**
> WebhookResponseBody v1_environment_webhooks_by_webhook_id_get(webhook_id)

environment.get_webhook_by_id



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

api_instance = ShipEngineApi::EnvironmentApi.new

webhook_id = 'webhook_id_example' # String | 


begin
  #environment.get_webhook_by_id
  result = api_instance.v1_environment_webhooks_by_webhook_id_get(webhook_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->v1_environment_webhooks_by_webhook_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**|  | 

### Return type

[**WebhookResponseBody**](WebhookResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_environment_webhooks_by_webhook_id_put**
> v1_environment_webhooks_by_webhook_id_put(webhook_id, body)

environment.update_webhook



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

api_instance = ShipEngineApi::EnvironmentApi.new

webhook_id = 'webhook_id_example' # String | 

body = ShipEngineApi::UpdateWebhookRequestBody.new # UpdateWebhookRequestBody | 


begin
  #environment.update_webhook
  api_instance.v1_environment_webhooks_by_webhook_id_put(webhook_id, body)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->v1_environment_webhooks_by_webhook_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**|  | 
 **body** | [**UpdateWebhookRequestBody**](UpdateWebhookRequestBody.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_environment_webhooks_get**
> Array&lt;WebhookResponseBody&gt; v1_environment_webhooks_get

environment.webhooks



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

api_instance = ShipEngineApi::EnvironmentApi.new

begin
  #environment.webhooks
  result = api_instance.v1_environment_webhooks_get
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->v1_environment_webhooks_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;WebhookResponseBody&gt;**](WebhookResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_environment_webhooks_post**
> WebhookResponseBody v1_environment_webhooks_post(body)

environment.create_webhook



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

api_instance = ShipEngineApi::EnvironmentApi.new

body = ShipEngineApi::CreateWebhookRequestBody.new # CreateWebhookRequestBody | 


begin
  #environment.create_webhook
  result = api_instance.v1_environment_webhooks_post(body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling EnvironmentApi->v1_environment_webhooks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateWebhookRequestBody**](CreateWebhookRequestBody.md)|  | 

### Return type

[**WebhookResponseBody**](WebhookResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



