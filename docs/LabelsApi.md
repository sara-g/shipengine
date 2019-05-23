# ShipEngineApi::LabelsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_labels_by_label_id_get**](LabelsApi.md#v1_labels_by_label_id_get) | **GET** /v1/labels/{label_id} | labels.get_by_id
[**v1_labels_get**](LabelsApi.md#v1_labels_get) | **GET** /v1/labels | Searchforshippinglabelsyou&#39;vecreated
[**v1_labels_rates_by_rate_id_post**](LabelsApi.md#v1_labels_rates_by_rate_id_post) | **POST** /v1/labels/rates/{rate_id} | labels.purchase_label_with_rate
[**v1_labels_shipment_by_shipment_id_post**](LabelsApi.md#v1_labels_shipment_by_shipment_id_post) | **POST** /v1/labels/shipment/{shipment_id} | labels.purchase_label_with_shipment
[**v1_labels_track_by_label_id_get**](LabelsApi.md#v1_labels_track_by_label_id_get) | **GET** /v1/labels/{label_id}/track | labels.track
[**v1_labels_void_by_label_id_put**](LabelsApi.md#v1_labels_void_by_label_id_put) | **PUT** /v1/labels/{label_id}/void | labels.void_label


# **v1_labels_by_label_id_get**
> Label v1_labels_by_label_id_get(label_id)

labels.get_by_id



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

api_instance = ShipEngineApi::LabelsApi.new

label_id = 'label_id_example' # String | 


begin
  #labels.get_by_id
  result = api_instance.v1_labels_by_label_id_get(label_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->v1_labels_by_label_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**|  | 

### Return type

[**Label**](Label.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_labels_get**
> V1LabelsResponse v1_labels_get(opts)

Searchforshippinglabelsyou'vecreated

This endpoint returns a list of labels that you've [created](https://docs.shipengine.com/docs/quickstart-create-a-label). You can optionally filter the results as well as control their sort order and the number of results returned at a time.  By default, all labels are returned, 25 at a time, starting with the most recently created ones.  You can combine multiple filter options to narrow-down the results.  For example, if you only want to get your UPS labels for your east coast warehouse you could query by both `warehouse_id` and `carrier_id`  > ###### Warning > Test labels (those created with `test_label: true`) are not included in the results.  If you've only ever created test labels, then the results will be empty. 

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

api_instance = ShipEngineApi::LabelsApi.new

opts = { 
  label_status: 'label_status_example', # String | Only return labels that are currently in the specified status
  carrier_id: 'carrier_id_example', # String | Only return labels for a specific [carrier account](https://docs.shipengine.com/docs/setup-a-carrier)
  service_code: 'service_code_example', # String | Only return labels for a specific [carrier service](https://docs.shipengine.com/docs/use-a-specific-service)
  tracking_number: 'tracking_number_example', # String | Only return labels with a specific tracking number
  batch_id: 'batch_id_example', # String | Only return labels that were created in a specific [batch](https://docs.shipengine.com/docs/using-batches)
  warehouse_id: 'warehouse_id_example', # String | Only return labels that originate from a specific [warehouse](https://docs.shipengine.com/docs/ship-from-a-warehouse)
  created_at_start: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Only return labels that were created on or after a specific date/time
  created_at_end: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Only return labels that were created on or before a specific date/time
  page: 1, # Integer | Return a specific \"page\" of results. Defaults to the first page. If set to a number that's greater than the number of pages of results, an empty page will be returned.
  page_size: 25, # Integer | The number of labels to return per response.  Defaults to 25.
  sort_dir: 'sort_dir_example', # String | Controls the sort order of the query. Defaults to `desc`.
  sort_by: 'created_at' # String | Controls which property the query is sorted by. Defaults to `created_at`.
}

begin
  #Searchforshippinglabelsyou'vecreated
  result = api_instance.v1_labels_get(opts)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->v1_labels_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_status** | **String**| Only return labels that are currently in the specified status | [optional] 
 **carrier_id** | **String**| Only return labels for a specific [carrier account](https://docs.shipengine.com/docs/setup-a-carrier) | [optional] 
 **service_code** | **String**| Only return labels for a specific [carrier service](https://docs.shipengine.com/docs/use-a-specific-service) | [optional] 
 **tracking_number** | **String**| Only return labels with a specific tracking number | [optional] 
 **batch_id** | **String**| Only return labels that were created in a specific [batch](https://docs.shipengine.com/docs/using-batches) | [optional] 
 **warehouse_id** | **String**| Only return labels that originate from a specific [warehouse](https://docs.shipengine.com/docs/ship-from-a-warehouse) | [optional] 
 **created_at_start** | **DateTime**| Only return labels that were created on or after a specific date/time | [optional] 
 **created_at_end** | **DateTime**| Only return labels that were created on or before a specific date/time | [optional] 
 **page** | **Integer**| Return a specific \&quot;page\&quot; of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page will be returned. | [optional] [default to 1]
 **page_size** | **Integer**| The number of labels to return per response.  Defaults to 25. | [optional] [default to 25]
 **sort_dir** | **String**| Controls the sort order of the query. Defaults to &#x60;desc&#x60;. | [optional] 
 **sort_by** | **String**| Controls which property the query is sorted by. Defaults to &#x60;created_at&#x60;. | [optional] [default to created_at]

### Return type

[**V1LabelsResponse**](V1LabelsResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_labels_rates_by_rate_id_post**
> Label v1_labels_rates_by_rate_id_post(rate_id, body)

labels.purchase_label_with_rate



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

api_instance = ShipEngineApi::LabelsApi.new

rate_id = 'rate_id_example' # String | 

body = ShipEngineApi::PurchaseLabelWithoutShipmentRequestBody.new # PurchaseLabelWithoutShipmentRequestBody | 


begin
  #labels.purchase_label_with_rate
  result = api_instance.v1_labels_rates_by_rate_id_post(rate_id, body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->v1_labels_rates_by_rate_id_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_id** | **String**|  | 
 **body** | [**PurchaseLabelWithoutShipmentRequestBody**](PurchaseLabelWithoutShipmentRequestBody.md)|  | 

### Return type

[**Label**](Label.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_labels_shipment_by_shipment_id_post**
> Label v1_labels_shipment_by_shipment_id_post(shipment_id, body)

labels.purchase_label_with_shipment



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

api_instance = ShipEngineApi::LabelsApi.new

shipment_id = 'shipment_id_example' # String | 

body = ShipEngineApi::PurchaseLabelWithoutShipmentRequestBody.new # PurchaseLabelWithoutShipmentRequestBody | 


begin
  #labels.purchase_label_with_shipment
  result = api_instance.v1_labels_shipment_by_shipment_id_post(shipment_id, body)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->v1_labels_shipment_by_shipment_id_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**|  | 
 **body** | [**PurchaseLabelWithoutShipmentRequestBody**](PurchaseLabelWithoutShipmentRequestBody.md)|  | 

### Return type

[**Label**](Label.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_labels_track_by_label_id_get**
> TrackingInformationResponseBody v1_labels_track_by_label_id_get(label_id)

labels.track



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

api_instance = ShipEngineApi::LabelsApi.new

label_id = 'label_id_example' # String | 


begin
  #labels.track
  result = api_instance.v1_labels_track_by_label_id_get(label_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->v1_labels_track_by_label_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**|  | 

### Return type

[**TrackingInformationResponseBody**](TrackingInformationResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_labels_void_by_label_id_put**
> VoidLabelResponseBody v1_labels_void_by_label_id_put(label_id)

labels.void_label



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

api_instance = ShipEngineApi::LabelsApi.new

label_id = 'label_id_example' # String | 


begin
  #labels.void_label
  result = api_instance.v1_labels_void_by_label_id_put(label_id)
  p result
rescue ShipEngineApi::ApiError => e
  puts "Exception when calling LabelsApi->v1_labels_void_by_label_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**|  | 

### Return type

[**VoidLabelResponseBody**](VoidLabelResponseBody.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



