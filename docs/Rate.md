# ShipEngineApi::Rate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_id** | **String** | A string that uniquely identifies the rate id | [optional] 
**rate_type** | [**RateType**](RateType.md) |  | [optional] 
**carrier_id** | **String** | A string that uniquely identifies the carrier id | [optional] 
**shipping_amount** | [**Money**](Money.md) |  | [optional] 
**insurance_amount** | [**Money**](Money.md) |  | [optional] 
**confirmation_amount** | [**Money**](Money.md) |  | [optional] 
**other_amount** | [**Money**](Money.md) |  | [optional] 
**zone** | **Integer** |  | [optional] 
**package_type** | **String** |  | [optional] 
**delivery_days** | **Integer** |  | [optional] 
**guaranteed_service** | **BOOLEAN** |  | [optional] 
**estimated_delivery_date** | **DateTime** |  | [optional] 
**carrier_delivery_days** | **String** |  | [optional] 
**ship_date** | **DateTime** |  | [optional] 
**negotiated_rate** | **BOOLEAN** |  | [optional] 
**service_type** | **String** |  | [optional] 
**service_code** | **String** |  | [optional] 
**trackable** | **BOOLEAN** |  | [optional] 
**carrier_code** | **String** |  | [optional] 
**carrier_nickname** | **String** |  | [optional] 
**carrier_friendly_name** | **String** |  | [optional] 
**validation_status** | [**ValidationStatus**](ValidationStatus.md) |  | [optional] 
**warning_messages** | **Array&lt;String&gt;** |  | [optional] 
**error_messages** | **Array&lt;String&gt;** |  | [optional] 


