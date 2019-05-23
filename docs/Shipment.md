# ShipEngineApi::Shipment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipment_id** | **String** | A string that uniquely identifies the shipment id | [optional] 
**carrier_id** | **String** | A string that uniquely identifies the carrier id | [optional] 
**service_code** | **String** |  | [optional] 
**external_shipment_id** | **String** | A string that uniquely identifies the external shipment id | [optional] 
**ship_date** | **DateTime** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**modified_at** | **DateTime** |  | [optional] 
**shipment_status** | [**ShipmentStatus**](ShipmentStatus.md) |  | [optional] 
**ship_to** | [**Address**](Address.md) |  | [optional] 
**ship_from** | [**Address**](Address.md) |  | [optional] 
**warehouse_id** | **String** | A string that uniquely identifies the warehouse id | [optional] 
**return_to** | [**Address**](Address.md) |  | [optional] 
**confirmation** | [**Confirmation**](Confirmation.md) |  | [optional] 
**customs** | [**InternationalOptions**](InternationalOptions.md) |  | [optional] 
**advanced_options** | [**AdvancedOptions**](AdvancedOptions.md) |  | [optional] 
**insurance_provider** | [**InsuranceProvider**](InsuranceProvider.md) |  | [optional] 
**tags** | [**Array&lt;TagResponseBody&gt;**](TagResponseBody.md) |  | [optional] 
**packages** | [**Array&lt;ShipmentPackage&gt;**](ShipmentPackage.md) |  | [optional] 
**total_weight** | [**Weight**](Weight.md) |  | [optional] 


