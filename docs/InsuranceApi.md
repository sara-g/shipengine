# ShipEngineApi::InsuranceApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_insurance_shipsurance_add_funds_patch**](InsuranceApi.md#v1_insurance_shipsurance_add_funds_patch) | **PATCH** /v1/insurance/shipsurance/add_funds | insurance.add_funds
[**v1_insurance_shipsurance_balance_get**](InsuranceApi.md#v1_insurance_shipsurance_balance_get) | **GET** /v1/insurance/shipsurance/balance | insurance.get_balance


# **v1_insurance_shipsurance_add_funds_patch**
> Money v1_insurance_shipsurance_add_funds_patch(body)

insurance.add_funds



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

api_instance = ShipEngineApi::InsuranceApi.new

body = ShipEngineApi::Money.new # Money | 


begin
  #insurance.add_funds
  result = api_instance.v1_insurance_shipsurance_add_funds_patch(body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling InsuranceApi->v1_insurance_shipsurance_add_funds_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Money**](Money.md)|  | 

### Return type

[**Money**](Money.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_insurance_shipsurance_balance_get**
> Money v1_insurance_shipsurance_balance_get

insurance.get_balance



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

api_instance = ShipEngineApi::InsuranceApi.new

begin
  #insurance.get_balance
  result = api_instance.v1_insurance_shipsurance_balance_get
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling InsuranceApi->v1_insurance_shipsurance_balance_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Money**](Money.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



