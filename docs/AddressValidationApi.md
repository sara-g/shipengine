# ShipEngineApi::AddressValidationApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_addresses_validate_post**](AddressValidationApi.md#v1_addresses_validate_post) | **POST** /v1/addresses/validate | addresses.validate_addresses


# **v1_addresses_validate_post**
> Array&lt;AddressValidationResult&gt; v1_addresses_validate_post(body)

addresses.validate_addresses



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

api_instance = ShipEngineApi::AddressValidationApi.new

body = [ShipEngineApi::Address.new] # Array<Address> | 


begin
  #addresses.validate_addresses
  result = api_instance.v1_addresses_validate_post(body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling AddressValidationApi->v1_addresses_validate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Array&lt;Address&gt;**](Address.md)|  | 

### Return type

[**Array&lt;AddressValidationResult&gt;**](AddressValidationResult.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



