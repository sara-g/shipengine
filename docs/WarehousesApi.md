# ShipEngineApi::WarehousesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_warehouses_by_warehouse_id_delete**](WarehousesApi.md#v1_warehouses_by_warehouse_id_delete) | **DELETE** /v1/warehouses/{warehouse_id} | warehouses.delete
[**v1_warehouses_by_warehouse_id_get**](WarehousesApi.md#v1_warehouses_by_warehouse_id_get) | **GET** /v1/warehouses/{warehouse_id} | warehouses.get_by_id
[**v1_warehouses_by_warehouse_id_put**](WarehousesApi.md#v1_warehouses_by_warehouse_id_put) | **PUT** /v1/warehouses/{warehouse_id} | warehouses.update
[**v1_warehouses_get**](WarehousesApi.md#v1_warehouses_get) | **GET** /v1/warehouses | warehouses.find
[**v1_warehouses_post**](WarehousesApi.md#v1_warehouses_post) | **POST** /v1/warehouses | warehouses.create


# **v1_warehouses_by_warehouse_id_delete**
> v1_warehouses_by_warehouse_id_delete(warehouse_id)

warehouses.delete



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

api_instance = ShipEngineApi::WarehousesApi.new

warehouse_id = 'warehouse_id_example' # String | 


begin
  #warehouses.delete
  api_instance.v1_warehouses_by_warehouse_id_delete(warehouse_id)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling WarehousesApi->v1_warehouses_by_warehouse_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_warehouses_by_warehouse_id_get**
> Warehouse v1_warehouses_by_warehouse_id_get(warehouse_id)

warehouses.get_by_id



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

api_instance = ShipEngineApi::WarehousesApi.new

warehouse_id = 'warehouse_id_example' # String | 


begin
  #warehouses.get_by_id
  result = api_instance.v1_warehouses_by_warehouse_id_get(warehouse_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling WarehousesApi->v1_warehouses_by_warehouse_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**|  | 

### Return type

[**Warehouse**](Warehouse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_warehouses_by_warehouse_id_put**
> v1_warehouses_by_warehouse_id_put(warehouse_id, body)

warehouses.update



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

api_instance = ShipEngineApi::WarehousesApi.new

warehouse_id = 'warehouse_id_example' # String | 

body = ShipEngineApi::WarehouseRequestBody.new # WarehouseRequestBody | 


begin
  #warehouses.update
  api_instance.v1_warehouses_by_warehouse_id_put(warehouse_id, body)
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling WarehousesApi->v1_warehouses_by_warehouse_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**|  | 
 **body** | [**WarehouseRequestBody**](WarehouseRequestBody.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_warehouses_get**
> WarehouseListResponseBody v1_warehouses_get

warehouses.find



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

api_instance = ShipEngineApi::WarehousesApi.new

begin
  #warehouses.find
  result = api_instance.v1_warehouses_get
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling WarehousesApi->v1_warehouses_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WarehouseListResponseBody**](WarehouseListResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_warehouses_post**
> Warehouse v1_warehouses_post(body)

warehouses.create



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

api_instance = ShipEngineApi::WarehousesApi.new

body = ShipEngineApi::WarehouseRequestBody.new # WarehouseRequestBody | 


begin
  #warehouses.create
  result = api_instance.v1_warehouses_post(body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling WarehousesApi->v1_warehouses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WarehouseRequestBody**](WarehouseRequestBody.md)|  | 

### Return type

[**Warehouse**](Warehouse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



