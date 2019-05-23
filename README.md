# ShipEngine - the Ruby library for the ShipEngine™

ShipEngine - the Ruby gem for the ShipEngine

This library is currently in __beta__

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build shipengine_api.gemspec
```

Then either install the gem locally:

```shell
gem install ./shipengine_api-1.0.0-262c365.gem
```
(for development, run `gem install --dev ./shipengine_api-1.0.0-262c365.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'shipengine_api', '~> 1.0.0-262c365'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'shipengine_api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'shipengine_api'

# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *https://api.shipengine.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ShipEngineApi::AddressValidationApi* | [**v1_addresses_validate_post**](docs/AddressValidationApi.md#v1_addresses_validate_post) | **POST** /v1/addresses/validate | addresses.validate_addresses
*ShipEngineApi::BatchesApi* | [**v1_batches_add_by_batch_id_post**](docs/BatchesApi.md#v1_batches_add_by_batch_id_post) | **POST** /v1/batches/{batch_id}/add | batches.add_to_batch
*ShipEngineApi::BatchesApi* | [**v1_batches_by_batch_id_get**](docs/BatchesApi.md#v1_batches_by_batch_id_get) | **GET** /v1/batches/{batch_id} | batches.get_by_id
*ShipEngineApi::BatchesApi* | [**v1_batches_errors_by_batch_id_get**](docs/BatchesApi.md#v1_batches_errors_by_batch_id_get) | **GET** /v1/batches/{batch_id}/errors | batches.find_errors
*ShipEngineApi::BatchesApi* | [**v1_batches_external_batch_id_by_external_batch_id_get**](docs/BatchesApi.md#v1_batches_external_batch_id_by_external_batch_id_get) | **GET** /v1/batches/external_batch_id/{external_batch_id} | batches.get_by_external_id
*ShipEngineApi::BatchesApi* | [**v1_batches_get**](docs/BatchesApi.md#v1_batches_get) | **GET** /v1/batches | batches.find
*ShipEngineApi::BatchesApi* | [**v1_batches_post**](docs/BatchesApi.md#v1_batches_post) | **POST** /v1/batches | batches.create
*ShipEngineApi::BatchesApi* | [**v1_batches_process_labels_by_batch_id_post**](docs/BatchesApi.md#v1_batches_process_labels_by_batch_id_post) | **POST** /v1/batches/{batch_id}/process/labels | batches.process
*ShipEngineApi::BatchesApi* | [**v1_batches_remove_by_batch_id_post**](docs/BatchesApi.md#v1_batches_remove_by_batch_id_post) | **POST** /v1/batches/{batch_id}/remove | batches.remove_from_batch
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_access_worldwide_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_access_worldwide_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/access_worldwide/{carrier_id} | access_worldwide_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_access_worldwide_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_access_worldwide_post) | **POST** /v1/connections/carriers/access_worldwide | access_worldwide_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_apc_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_apc_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/apc/{carrier_id} | apc_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_apc_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_apc_post) | **POST** /v1/connections/carriers/apc | apc_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_asendia_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_asendia_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/asendia/{carrier_id} | asendia_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_asendia_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_asendia_post) | **POST** /v1/connections/carriers/asendia | asendia_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_dhl_ecommerce_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_dhl_ecommerce_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/dhl_ecommerce/{carrier_id} | dhl_ecommerce_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_dhl_ecommerce_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_dhl_ecommerce_post) | **POST** /v1/connections/carriers/dhl_ecommerce | dhl_ecommerce_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_dhl_express_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_dhl_express_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/dhl_express/{carrier_id} | dhl_express_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_dhl_express_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_dhl_express_post) | **POST** /v1/connections/carriers/dhl_express | dhl_express_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_dhl_express_settings_by_carrier_id_get**](docs/CarrierAccountsApi.md#v1_connections_carriers_dhl_express_settings_by_carrier_id_get) | **GET** /v1/connections/carriers/dhl_express/{carrier_id}/settings | dhl_express_account_carrier.get_settings
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_dhl_express_settings_by_carrier_id_put**](docs/CarrierAccountsApi.md#v1_connections_carriers_dhl_express_settings_by_carrier_id_put) | **PUT** /v1/connections/carriers/dhl_express/{carrier_id}/settings | dhl_express_account_carrier.update_settings
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_dhl_express_uk_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_dhl_express_uk_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/dhl_express_uk/{carrier_id} | dhl_express_uk_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_dhl_express_uk_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_dhl_express_uk_post) | **POST** /v1/connections/carriers/dhl_express_uk | dhl_express_uk_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_dpd_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_dpd_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/dpd/{carrier_id} | dpd_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_dpd_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_dpd_post) | **POST** /v1/connections/carriers/dpd | dpd_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_endicia_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_endicia_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/endicia/{carrier_id} | endicia_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_endicia_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_endicia_post) | **POST** /v1/connections/carriers/endicia | endicia_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_fedex_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_fedex_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/fedex/{carrier_id} | fedex_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_fedex_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_fedex_post) | **POST** /v1/connections/carriers/fedex | fedex_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_fedex_settings_by_carrier_id_get**](docs/CarrierAccountsApi.md#v1_connections_carriers_fedex_settings_by_carrier_id_get) | **GET** /v1/connections/carriers/fedex/{carrier_id}/settings | fedex_account_carrier.get_settings
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_fedex_settings_by_carrier_id_put**](docs/CarrierAccountsApi.md#v1_connections_carriers_fedex_settings_by_carrier_id_put) | **PUT** /v1/connections/carriers/fedex/{carrier_id}/settings | fedex_account_carrier.update_settings
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_fedex_uk_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_fedex_uk_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/fedex_uk/{carrier_id} | fedex_uk_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_fedex_uk_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_fedex_uk_post) | **POST** /v1/connections/carriers/fedex_uk | fedex_uk_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_firstmile_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_firstmile_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/firstmile/{carrier_id} | first_mile_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_firstmile_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_firstmile_post) | **POST** /v1/connections/carriers/firstmile | first_mile_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_globegistics_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_globegistics_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/globegistics/{carrier_id} | globegistics_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_globegistics_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_globegistics_post) | **POST** /v1/connections/carriers/globegistics | globegistics_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_imex_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_imex_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/imex/{carrier_id} | imex_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_imex_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_imex_post) | **POST** /v1/connections/carriers/imex | imex_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_newgistics_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_newgistics_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/newgistics/{carrier_id} | newgistics_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_newgistics_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_newgistics_post) | **POST** /v1/connections/carriers/newgistics | newgistics_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_newgistics_settings_by_carrier_id_put**](docs/CarrierAccountsApi.md#v1_connections_carriers_newgistics_settings_by_carrier_id_put) | **PUT** /v1/connections/carriers/newgistics/{carrier_id}/settings | newgistics_account_carrier.update_settings
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_ontrac_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_ontrac_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/ontrac/{carrier_id} | ontrac_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_ontrac_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_ontrac_post) | **POST** /v1/connections/carriers/ontrac | ontrac_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_royal_mail_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_royal_mail_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/royal_mail/{carrier_id} | royal_mail_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_royal_mail_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_royal_mail_post) | **POST** /v1/connections/carriers/royal_mail | royal_mail_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_rr_donnelley_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_rr_donnelley_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/rr_donnelley/{carrier_id} | rr_donnelley_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_rr_donnelley_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_rr_donnelley_post) | **POST** /v1/connections/carriers/rr_donnelley | rr_donnelley_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_stamps_com_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_stamps_com_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/stamps_com/{carrier_id} | stamps_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_stamps_com_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_stamps_com_post) | **POST** /v1/connections/carriers/stamps_com | stamps_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_stamps_com_request_account_url_by_carrier_id_put**](docs/CarrierAccountsApi.md#v1_connections_carriers_stamps_com_request_account_url_by_carrier_id_put) | **PUT** /v1/connections/carriers/stamps_com/{carrier_id}/request_account_url | stamps_account_carrier.get_account_url
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_ups_by_carrier_id_delete**](docs/CarrierAccountsApi.md#v1_connections_carriers_ups_by_carrier_id_delete) | **DELETE** /v1/connections/carriers/ups/{carrier_id} | ups_account_carrier.disconnect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_ups_post**](docs/CarrierAccountsApi.md#v1_connections_carriers_ups_post) | **POST** /v1/connections/carriers/ups | ups_account_carrier.connect_account
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_ups_settings_by_carrier_id_get**](docs/CarrierAccountsApi.md#v1_connections_carriers_ups_settings_by_carrier_id_get) | **GET** /v1/connections/carriers/ups/{carrier_id}/settings | ups_account_carrier.get_settings
*ShipEngineApi::CarrierAccountsApi* | [**v1_connections_carriers_ups_settings_by_carrier_id_put**](docs/CarrierAccountsApi.md#v1_connections_carriers_ups_settings_by_carrier_id_put) | **PUT** /v1/connections/carriers/ups/{carrier_id}/settings | ups_account_carrier.update_settings
*ShipEngineApi::CarriersApi* | [**v1_carriers_add_funds_by_carrier_id_put**](docs/CarriersApi.md#v1_carriers_add_funds_by_carrier_id_put) | **PUT** /v1/carriers/{carrier_id}/add_funds | carriers.add_funds
*ShipEngineApi::CarriersApi* | [**v1_carriers_by_carrier_id_get**](docs/CarriersApi.md#v1_carriers_by_carrier_id_get) | **GET** /v1/carriers/{carrier_id} | carriers.get_by_id
*ShipEngineApi::CarriersApi* | [**v1_carriers_get**](docs/CarriersApi.md#v1_carriers_get) | **GET** /v1/carriers | carriers.find
*ShipEngineApi::CarriersApi* | [**v1_carriers_options_by_carrier_id_get**](docs/CarriersApi.md#v1_carriers_options_by_carrier_id_get) | **GET** /v1/carriers/{carrier_id}/options | carriers.get_options
*ShipEngineApi::CarriersApi* | [**v1_carriers_packages_by_carrier_id_get**](docs/CarriersApi.md#v1_carriers_packages_by_carrier_id_get) | **GET** /v1/carriers/{carrier_id}/packages | carriers.find_packages
*ShipEngineApi::CarriersApi* | [**v1_carriers_services_by_carrier_id_get**](docs/CarriersApi.md#v1_carriers_services_by_carrier_id_get) | **GET** /v1/carriers/{carrier_id}/services | carriers.find_services
*ShipEngineApi::EnvironmentApi* | [**v1_environment_webhooks_by_webhook_id_delete**](docs/EnvironmentApi.md#v1_environment_webhooks_by_webhook_id_delete) | **DELETE** /v1/environment/webhooks/{webhook_id} | environment.delete_webhook
*ShipEngineApi::EnvironmentApi* | [**v1_environment_webhooks_by_webhook_id_get**](docs/EnvironmentApi.md#v1_environment_webhooks_by_webhook_id_get) | **GET** /v1/environment/webhooks/{webhook_id} | environment.get_webhook_by_id
*ShipEngineApi::EnvironmentApi* | [**v1_environment_webhooks_by_webhook_id_put**](docs/EnvironmentApi.md#v1_environment_webhooks_by_webhook_id_put) | **PUT** /v1/environment/webhooks/{webhook_id} | environment.update_webhook
*ShipEngineApi::EnvironmentApi* | [**v1_environment_webhooks_get**](docs/EnvironmentApi.md#v1_environment_webhooks_get) | **GET** /v1/environment/webhooks | environment.webhooks
*ShipEngineApi::EnvironmentApi* | [**v1_environment_webhooks_post**](docs/EnvironmentApi.md#v1_environment_webhooks_post) | **POST** /v1/environment/webhooks | environment.create_webhook
*ShipEngineApi::InsuranceApi* | [**v1_insurance_shipsurance_add_funds_patch**](docs/InsuranceApi.md#v1_insurance_shipsurance_add_funds_patch) | **PATCH** /v1/insurance/shipsurance/add_funds | insurance.add_funds
*ShipEngineApi::InsuranceApi* | [**v1_insurance_shipsurance_balance_get**](docs/InsuranceApi.md#v1_insurance_shipsurance_balance_get) | **GET** /v1/insurance/shipsurance/balance | insurance.get_balance
*ShipEngineApi::LabelsApi* | [**v1_labels_by_label_id_get**](docs/LabelsApi.md#v1_labels_by_label_id_get) | **GET** /v1/labels/{label_id} | labels.get_by_id
*ShipEngineApi::LabelsApi* | [**v1_labels_get**](docs/LabelsApi.md#v1_labels_get) | **GET** /v1/labels | Searchforshippinglabelsyou'vecreated
*ShipEngineApi::LabelsApi* | [**v1_labels_rates_by_rate_id_post**](docs/LabelsApi.md#v1_labels_rates_by_rate_id_post) | **POST** /v1/labels/rates/{rate_id} | labels.purchase_label_with_rate
*ShipEngineApi::LabelsApi* | [**v1_labels_shipment_by_shipment_id_post**](docs/LabelsApi.md#v1_labels_shipment_by_shipment_id_post) | **POST** /v1/labels/shipment/{shipment_id} | labels.purchase_label_with_shipment
*ShipEngineApi::LabelsApi* | [**v1_labels_track_by_label_id_get**](docs/LabelsApi.md#v1_labels_track_by_label_id_get) | **GET** /v1/labels/{label_id}/track | labels.track
*ShipEngineApi::LabelsApi* | [**v1_labels_void_by_label_id_put**](docs/LabelsApi.md#v1_labels_void_by_label_id_put) | **PUT** /v1/labels/{label_id}/void | labels.void_label
*ShipEngineApi::ManifestsApi* | [**v1_manifests_by_manifest_id_get**](docs/ManifestsApi.md#v1_manifests_by_manifest_id_get) | **GET** /v1/manifests/{manifest_id} | manifests.get_by_id
*ShipEngineApi::ManifestsApi* | [**v1_manifests_get**](docs/ManifestsApi.md#v1_manifests_get) | **GET** /v1/manifests | manifests.find
*ShipEngineApi::ManifestsApi* | [**v1_manifests_post**](docs/ManifestsApi.md#v1_manifests_post) | **POST** /v1/manifests | manifests.create
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_amazon_deactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_amazon_deactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/amazon/{store_id}/deactivate | amazon_account.deactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_amazon_post**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_amazon_post) | **POST** /v-beta/connections/marketplaces/amazon | amazon_account.connect
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_amazon_reactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_amazon_reactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/amazon/{store_id}/reactivate | amazon_account.reactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_amazon_settings_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_amazon_settings_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/amazon/{store_id}/settings | amazon_account.update_settings
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_amazon_test_by_store_id_get**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_amazon_test_by_store_id_get) | **GET** /v-beta/connections/marketplaces/amazon/{store_id}/test | amazon_account.test
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_channeladvisor_deactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_channeladvisor_deactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/channeladvisor/{store_id}/deactivate | channel_advisor_account.deactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_channeladvisor_post**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_channeladvisor_post) | **POST** /v-beta/connections/marketplaces/channeladvisor | channel_advisor_account.connect
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_channeladvisor_reactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_channeladvisor_reactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/channeladvisor/{store_id}/reactivate | channel_advisor_account.reactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_channeladvisor_settings_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_channeladvisor_settings_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/channeladvisor/{store_id}/settings | channel_advisor_account.update_settings
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_channeladvisor_test_by_store_id_get**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_channeladvisor_test_by_store_id_get) | **GET** /v-beta/connections/marketplaces/channeladvisor/{store_id}/test | channel_advisor_account.test
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_ebay_access_token_post**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_ebay_access_token_post) | **POST** /v-beta/connections/marketplaces/ebay/access_token | ebay_account.connect_access_token
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_ebay_deactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_ebay_deactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/ebay/{store_id}/deactivate | ebay_account.deactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_ebay_reactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_ebay_reactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/ebay/{store_id}/reactivate | ebay_account.reactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_ebay_settings_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_ebay_settings_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/ebay/{store_id}/settings | ebay_account.update_settings
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_ebay_test_by_store_id_get**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_ebay_test_by_store_id_get) | **GET** /v-beta/connections/marketplaces/ebay/{store_id}/test | ebay_account.test
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_etsy_access_token_post**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_etsy_access_token_post) | **POST** /v-beta/connections/marketplaces/etsy/access_token | etsy_account.connect
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_etsy_deactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_etsy_deactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/etsy/{store_id}/deactivate | etsy_account.deactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_etsy_reactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_etsy_reactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/etsy/{store_id}/reactivate | etsy_account.reactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_etsy_settings_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_etsy_settings_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/etsy/{store_id}/settings | etsy_account.update_settings
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_etsy_test_by_store_id_get**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_etsy_test_by_store_id_get) | **GET** /v-beta/connections/marketplaces/etsy/{store_id}/test | etsy_account.test
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_magento_deactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_magento_deactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/magento/{store_id}/deactivate | magento_account.deactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_magento_post**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_magento_post) | **POST** /v-beta/connections/marketplaces/magento | magento_account.connect
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_magento_reactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_magento_reactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/magento/{store_id}/reactivate | magento_account.reactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_magento_settings_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_magento_settings_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/magento/{store_id}/settings | magento_account.update_settings
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_magento_test_by_store_id_get**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_magento_test_by_store_id_get) | **GET** /v-beta/connections/marketplaces/magento/{store_id}/test | magento_account.test
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_shopify_access_token_post**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_shopify_access_token_post) | **POST** /v-beta/connections/marketplaces/shopify/access_token | shopify_account.connect_access_token
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_shopify_deactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_shopify_deactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/shopify/{store_id}/deactivate | shopify_account.deactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_shopify_reactivate_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_shopify_reactivate_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/shopify/{store_id}/reactivate | shopify_account.reactivate
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_shopify_settings_by_store_id_put**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_shopify_settings_by_store_id_put) | **PUT** /v-beta/connections/marketplaces/shopify/{store_id}/settings | shopify_account.update_settings
*ShipEngineApi::MarketplaceAccountsApi* | [**v_beta_connections_marketplaces_shopify_test_by_store_id_get**](docs/MarketplaceAccountsApi.md#v_beta_connections_marketplaces_shopify_test_by_store_id_get) | **GET** /v-beta/connections/marketplaces/shopify/{store_id}/test | shopify_account.test
*ShipEngineApi::PackagesApi* | [**v1_packages_by_package_id_delete**](docs/PackagesApi.md#v1_packages_by_package_id_delete) | **DELETE** /v1/packages/{package_id} | packages.delete
*ShipEngineApi::PackagesApi* | [**v1_packages_by_package_id_get**](docs/PackagesApi.md#v1_packages_by_package_id_get) | **GET** /v1/packages/{package_id} | packages.get_by_id
*ShipEngineApi::PackagesApi* | [**v1_packages_by_package_id_put**](docs/PackagesApi.md#v1_packages_by_package_id_put) | **PUT** /v1/packages/{package_id} | packages.update
*ShipEngineApi::PackagesApi* | [**v1_packages_get**](docs/PackagesApi.md#v1_packages_get) | **GET** /v1/packages | packages.find
*ShipEngineApi::PackagesApi* | [**v1_packages_post**](docs/PackagesApi.md#v1_packages_post) | **POST** /v1/packages | packages.create
*ShipEngineApi::RatesApi* | [**v1_rates_bulk_post**](docs/RatesApi.md#v1_rates_bulk_post) | **POST** /v1/rates/bulk | rates.bulk_rate_shipments
*ShipEngineApi::RatesApi* | [**v1_rates_by_rate_id_get**](docs/RatesApi.md#v1_rates_by_rate_id_get) | **GET** /v1/rates/{rate_id} | rates.get_by_id
*ShipEngineApi::RatesApi* | [**v1_rates_estimate_post**](docs/RatesApi.md#v1_rates_estimate_post) | **POST** /v1/rates/estimate | rates.estimate
*ShipEngineApi::RatesApi* | [**v1_rates_post**](docs/RatesApi.md#v1_rates_post) | **POST** /v1/rates | rates.rate_shipment
*ShipEngineApi::ShipmentsApi* | [**v1_shipments_by_shipment_id_get**](docs/ShipmentsApi.md#v1_shipments_by_shipment_id_get) | **GET** /v1/shipments/{shipment_id} | shipments.get_by_id
*ShipEngineApi::ShipmentsApi* | [**v1_shipments_by_shipment_id_put**](docs/ShipmentsApi.md#v1_shipments_by_shipment_id_put) | **PUT** /v1/shipments/{shipment_id} | shipments.update_shipment
*ShipEngineApi::ShipmentsApi* | [**v1_shipments_cancel_by_shipment_id_put**](docs/ShipmentsApi.md#v1_shipments_cancel_by_shipment_id_put) | **PUT** /v1/shipments/{shipment_id}/cancel | shipments.cancel
*ShipEngineApi::ShipmentsApi* | [**v1_shipments_errors_by_shipment_id_get**](docs/ShipmentsApi.md#v1_shipments_errors_by_shipment_id_get) | **GET** /v1/shipments/{shipment_id}/errors | shipments.find_errors
*ShipEngineApi::ShipmentsApi* | [**v1_shipments_external_shipment_id_by_external_shipment_id_get**](docs/ShipmentsApi.md#v1_shipments_external_shipment_id_by_external_shipment_id_get) | **GET** /v1/shipments/external_shipment_id/{external_shipment_id} | shipments.get_by_external_id
*ShipEngineApi::ShipmentsApi* | [**v1_shipments_get**](docs/ShipmentsApi.md#v1_shipments_get) | **GET** /v1/shipments | shipments.find
*ShipEngineApi::ShipmentsApi* | [**v1_shipments_post**](docs/ShipmentsApi.md#v1_shipments_post) | **POST** /v1/shipments | shipments.create_shipments
*ShipEngineApi::ShipmentsApi* | [**v1_shipments_rates_by_shipment_id_get**](docs/ShipmentsApi.md#v1_shipments_rates_by_shipment_id_get) | **GET** /v1/shipments/{shipment_id}/rates | shipments.get_rates_for_shipment
*ShipEngineApi::ShipmentsApi* | [**v1_shipments_tags_by_shipment_id_and_tag_delete**](docs/ShipmentsApi.md#v1_shipments_tags_by_shipment_id_and_tag_delete) | **DELETE** /v1/shipments/{shipment_id}/tags/{tag} | shipments.remove_tag
*ShipEngineApi::ShipmentsApi* | [**v1_shipments_tags_by_shipment_id_and_tag_post**](docs/ShipmentsApi.md#v1_shipments_tags_by_shipment_id_and_tag_post) | **POST** /v1/shipments/{shipment_id}/tags/{tag} | shipments.add_tag
*ShipEngineApi::TagsApi* | [**v1_tags_by_tag_name_and_new_name_put**](docs/TagsApi.md#v1_tags_by_tag_name_and_new_name_put) | **PUT** /v1/tags/{tag_name}/{new_name} | tags.update_tag
*ShipEngineApi::TagsApi* | [**v1_tags_by_tag_name_delete**](docs/TagsApi.md#v1_tags_by_tag_name_delete) | **DELETE** /v1/tags/{tag_name} | tags.delete
*ShipEngineApi::TagsApi* | [**v1_tags_by_tag_name_post**](docs/TagsApi.md#v1_tags_by_tag_name_post) | **POST** /v1/tags/{tag_name} | tags.add_tag
*ShipEngineApi::TagsApi* | [**v1_tags_get**](docs/TagsApi.md#v1_tags_get) | **GET** /v1/tags | tags.find_tags
*ShipEngineApi::TrackingApi* | [**v1_tracking_get**](docs/TrackingApi.md#v1_tracking_get) | **GET** /v1/tracking | tracking.track
*ShipEngineApi::TrackingApi* | [**v1_tracking_start_post**](docs/TrackingApi.md#v1_tracking_start_post) | **POST** /v1/tracking/start | tracking.start_tracking
*ShipEngineApi::TrackingApi* | [**v1_tracking_stop_post**](docs/TrackingApi.md#v1_tracking_stop_post) | **POST** /v1/tracking/stop | tracking.stop_tracking
*ShipEngineApi::WarehousesApi* | [**v1_warehouses_by_warehouse_id_delete**](docs/WarehousesApi.md#v1_warehouses_by_warehouse_id_delete) | **DELETE** /v1/warehouses/{warehouse_id} | warehouses.delete
*ShipEngineApi::WarehousesApi* | [**v1_warehouses_by_warehouse_id_get**](docs/WarehousesApi.md#v1_warehouses_by_warehouse_id_get) | **GET** /v1/warehouses/{warehouse_id} | warehouses.get_by_id
*ShipEngineApi::WarehousesApi* | [**v1_warehouses_by_warehouse_id_put**](docs/WarehousesApi.md#v1_warehouses_by_warehouse_id_put) | **PUT** /v1/warehouses/{warehouse_id} | warehouses.update
*ShipEngineApi::WarehousesApi* | [**v1_warehouses_get**](docs/WarehousesApi.md#v1_warehouses_get) | **GET** /v1/warehouses | warehouses.find
*ShipEngineApi::WarehousesApi* | [**v1_warehouses_post**](docs/WarehousesApi.md#v1_warehouses_post) | **POST** /v1/warehouses | warehouses.create


## Documentation for Models

 - [ShipEngineApi::AccessWorldwideAccountInformationRequestBody](docs/AccessWorldwideAccountInformationRequestBody.md)
 - [ShipEngineApi::Address](docs/Address.md)
 - [ShipEngineApi::AddressResidentialIndicator](docs/AddressResidentialIndicator.md)
 - [ShipEngineApi::AddressValidatingShipment](docs/AddressValidatingShipment.md)
 - [ShipEngineApi::AddressValidationResult](docs/AddressValidationResult.md)
 - [ShipEngineApi::AddressValidationStatus](docs/AddressValidationStatus.md)
 - [ShipEngineApi::AdvancedOptions](docs/AdvancedOptions.md)
 - [ShipEngineApi::AmazonAccountInformationRequestBody](docs/AmazonAccountInformationRequestBody.md)
 - [ShipEngineApi::AmazonProductIdentifier](docs/AmazonProductIdentifier.md)
 - [ShipEngineApi::ApcAccountInformationRequestBody](docs/ApcAccountInformationRequestBody.md)
 - [ShipEngineApi::ApiError](docs/ApiError.md)
 - [ShipEngineApi::AsendiaAccountInformationRequestBody](docs/AsendiaAccountInformationRequestBody.md)
 - [ShipEngineApi::BalanceResponseBody](docs/BalanceResponseBody.md)
 - [ShipEngineApi::Batch](docs/Batch.md)
 - [ShipEngineApi::BatchErrorsResponseBody](docs/BatchErrorsResponseBody.md)
 - [ShipEngineApi::BatchResponseError](docs/BatchResponseError.md)
 - [ShipEngineApi::BatchStatus](docs/BatchStatus.md)
 - [ShipEngineApi::BatchesSortBy](docs/BatchesSortBy.md)
 - [ShipEngineApi::BillToParty](docs/BillToParty.md)
 - [ShipEngineApi::BulkRateResponseBody](docs/BulkRateResponseBody.md)
 - [ShipEngineApi::CapturePayment](docs/CapturePayment.md)
 - [ShipEngineApi::Carrier](docs/Carrier.md)
 - [ShipEngineApi::CarrierAdvancedOption](docs/CarrierAdvancedOption.md)
 - [ShipEngineApi::CarrierListOptionsResponseBody](docs/CarrierListOptionsResponseBody.md)
 - [ShipEngineApi::CarrierListResponseBody](docs/CarrierListResponseBody.md)
 - [ShipEngineApi::CarrierListServicesResponseBody](docs/CarrierListServicesResponseBody.md)
 - [ShipEngineApi::ChannelAdvisorAccountInformationRequestBody](docs/ChannelAdvisorAccountInformationRequestBody.md)
 - [ShipEngineApi::ChannelAdvisorProductIdentifier](docs/ChannelAdvisorProductIdentifier.md)
 - [ShipEngineApi::Code](docs/Code.md)
 - [ShipEngineApi::Confirmation](docs/Confirmation.md)
 - [ShipEngineApi::ConnectAccountResponseBody](docs/ConnectAccountResponseBody.md)
 - [ShipEngineApi::ConnectMarketplaceResponseBody](docs/ConnectMarketplaceResponseBody.md)
 - [ShipEngineApi::Contents](docs/Contents.md)
 - [ShipEngineApi::CreateBatchRequestBody](docs/CreateBatchRequestBody.md)
 - [ShipEngineApi::CreateManifestRequestBody](docs/CreateManifestRequestBody.md)
 - [ShipEngineApi::CreateShipmentResponseBody](docs/CreateShipmentResponseBody.md)
 - [ShipEngineApi::CreateShipmentsRequestBody](docs/CreateShipmentsRequestBody.md)
 - [ShipEngineApi::CreateShipmentsResponseBody](docs/CreateShipmentsResponseBody.md)
 - [ShipEngineApi::CreateWebhookRequestBody](docs/CreateWebhookRequestBody.md)
 - [ShipEngineApi::Currency](docs/Currency.md)
 - [ShipEngineApi::CustomsItem](docs/CustomsItem.md)
 - [ShipEngineApi::DefaultAccountSettingsRequestBody](docs/DefaultAccountSettingsRequestBody.md)
 - [ShipEngineApi::DetailCode](docs/DetailCode.md)
 - [ShipEngineApi::DhlEcommerceAccountInformationRequestBody](docs/DhlEcommerceAccountInformationRequestBody.md)
 - [ShipEngineApi::DhlExpressAccountInformationRequestBody](docs/DhlExpressAccountInformationRequestBody.md)
 - [ShipEngineApi::DhlExpressAccountSettings](docs/DhlExpressAccountSettings.md)
 - [ShipEngineApi::DhlExpressUkAccountInformationRequestBody](docs/DhlExpressUkAccountInformationRequestBody.md)
 - [ShipEngineApi::DimensionUnit](docs/DimensionUnit.md)
 - [ShipEngineApi::Dimensions](docs/Dimensions.md)
 - [ShipEngineApi::DpdAccountInformationRequestBody](docs/DpdAccountInformationRequestBody.md)
 - [ShipEngineApi::EbayAccessTokenRequestBody](docs/EbayAccessTokenRequestBody.md)
 - [ShipEngineApi::EndiciaAccountInformationRequestBody](docs/EndiciaAccountInformationRequestBody.md)
 - [ShipEngineApi::ErrorResponseBody](docs/ErrorResponseBody.md)
 - [ShipEngineApi::EtsyAccessTokenRequestBody](docs/EtsyAccessTokenRequestBody.md)
 - [ShipEngineApi::Event](docs/Event.md)
 - [ShipEngineApi::FedexAccountInformationRequestBody](docs/FedexAccountInformationRequestBody.md)
 - [ShipEngineApi::FedexAccountSettingsRequestBody](docs/FedexAccountSettingsRequestBody.md)
 - [ShipEngineApi::FedexPickupType](docs/FedexPickupType.md)
 - [ShipEngineApi::FedexUkAccountInformationRequestBody](docs/FedexUkAccountInformationRequestBody.md)
 - [ShipEngineApi::First](docs/First.md)
 - [ShipEngineApi::FirstMileAccountInformationRequestBody](docs/FirstMileAccountInformationRequestBody.md)
 - [ShipEngineApi::GlobegisticsAccountInformationRequestBody](docs/GlobegisticsAccountInformationRequestBody.md)
 - [ShipEngineApi::ImexAccountInformationRequestBody](docs/ImexAccountInformationRequestBody.md)
 - [ShipEngineApi::InsuranceProvider](docs/InsuranceProvider.md)
 - [ShipEngineApi::InternationalOptions](docs/InternationalOptions.md)
 - [ShipEngineApi::Label](docs/Label.md)
 - [ShipEngineApi::LabelFormat](docs/LabelFormat.md)
 - [ShipEngineApi::LabelLayout](docs/LabelLayout.md)
 - [ShipEngineApi::LabelMessages](docs/LabelMessages.md)
 - [ShipEngineApi::LabelStatus](docs/LabelStatus.md)
 - [ShipEngineApi::Last](docs/Last.md)
 - [ShipEngineApi::Link](docs/Link.md)
 - [ShipEngineApi::Links](docs/Links.md)
 - [ShipEngineApi::ListBatchResponseBody](docs/ListBatchResponseBody.md)
 - [ShipEngineApi::ListLabelResponseBody](docs/ListLabelResponseBody.md)
 - [ShipEngineApi::ListManifestsRequestBody](docs/ListManifestsRequestBody.md)
 - [ShipEngineApi::ListManifestsResponseBody](docs/ListManifestsResponseBody.md)
 - [ShipEngineApi::ListShipmentResponseBody](docs/ListShipmentResponseBody.md)
 - [ShipEngineApi::ListTagResponseBody](docs/ListTagResponseBody.md)
 - [ShipEngineApi::MagentoAccountInformationRequestBody](docs/MagentoAccountInformationRequestBody.md)
 - [ShipEngineApi::MagentoAccountSettingsRequestBody](docs/MagentoAccountSettingsRequestBody.md)
 - [ShipEngineApi::MailInnovationsEndorsement](docs/MailInnovationsEndorsement.md)
 - [ShipEngineApi::ManifestResponseBody](docs/ManifestResponseBody.md)
 - [ShipEngineApi::ModelNext](docs/ModelNext.md)
 - [ShipEngineApi::ModifyBatchRequestBody](docs/ModifyBatchRequestBody.md)
 - [ShipEngineApi::Money](docs/Money.md)
 - [ShipEngineApi::NewgisticsAccountInformationRequestBody](docs/NewgisticsAccountInformationRequestBody.md)
 - [ShipEngineApi::NewgisticsAccountSettingsRequestBody](docs/NewgisticsAccountSettingsRequestBody.md)
 - [ShipEngineApi::NonDelivery](docs/NonDelivery.md)
 - [ShipEngineApi::OntracAccountInformationRequestBody](docs/OntracAccountInformationRequestBody.md)
 - [ShipEngineApi::Package](docs/Package.md)
 - [ShipEngineApi::PackageListResponseBody](docs/PackageListResponseBody.md)
 - [ShipEngineApi::PagedListResponseBody](docs/PagedListResponseBody.md)
 - [ShipEngineApi::PaginationLink](docs/PaginationLink.md)
 - [ShipEngineApi::Prev](docs/Prev.md)
 - [ShipEngineApi::ProcessBatchRequestBody](docs/ProcessBatchRequestBody.md)
 - [ShipEngineApi::ProviderError](docs/ProviderError.md)
 - [ShipEngineApi::PurchaseLabelRequestBody](docs/PurchaseLabelRequestBody.md)
 - [ShipEngineApi::PurchaseLabelWithoutShipmentRequestBody](docs/PurchaseLabelWithoutShipmentRequestBody.md)
 - [ShipEngineApi::Rate](docs/Rate.md)
 - [ShipEngineApi::RateEstimateRequestBody](docs/RateEstimateRequestBody.md)
 - [ShipEngineApi::RateRequestBody](docs/RateRequestBody.md)
 - [ShipEngineApi::RateResponseBody](docs/RateResponseBody.md)
 - [ShipEngineApi::RateResponseStatus](docs/RateResponseStatus.md)
 - [ShipEngineApi::RateShipmentRequestBody](docs/RateShipmentRequestBody.md)
 - [ShipEngineApi::RateShipmentResponseBody](docs/RateShipmentResponseBody.md)
 - [ShipEngineApi::RateShipmentsRequestBody](docs/RateShipmentsRequestBody.md)
 - [ShipEngineApi::RateType](docs/RateType.md)
 - [ShipEngineApi::ResponseMessage](docs/ResponseMessage.md)
 - [ShipEngineApi::RoyalMailAccountInformationRequestBody](docs/RoyalMailAccountInformationRequestBody.md)
 - [ShipEngineApi::RrDonnelleyAccountInformationRequestBody](docs/RrDonnelleyAccountInformationRequestBody.md)
 - [ShipEngineApi::Service](docs/Service.md)
 - [ShipEngineApi::Shipment](docs/Shipment.md)
 - [ShipEngineApi::ShipmentAddTagResponseBody](docs/ShipmentAddTagResponseBody.md)
 - [ShipEngineApi::ShipmentErrorsResponseBody](docs/ShipmentErrorsResponseBody.md)
 - [ShipEngineApi::ShipmentPackage](docs/ShipmentPackage.md)
 - [ShipEngineApi::ShipmentResponseError](docs/ShipmentResponseError.md)
 - [ShipEngineApi::ShipmentStatus](docs/ShipmentStatus.md)
 - [ShipEngineApi::ShipmentsSortBy](docs/ShipmentsSortBy.md)
 - [ShipEngineApi::ShopifyAccessTokenRequestBody](docs/ShopifyAccessTokenRequestBody.md)
 - [ShipEngineApi::SmartPostEndorsement](docs/SmartPostEndorsement.md)
 - [ShipEngineApi::SmartPostHub](docs/SmartPostHub.md)
 - [ShipEngineApi::SortBy](docs/SortBy.md)
 - [ShipEngineApi::SortDir](docs/SortDir.md)
 - [ShipEngineApi::StampsAccountInformationRequestBody](docs/StampsAccountInformationRequestBody.md)
 - [ShipEngineApi::StampsAccountUrlResponseBody](docs/StampsAccountUrlResponseBody.md)
 - [ShipEngineApi::StampsAccountUrlsRequestBody](docs/StampsAccountUrlsRequestBody.md)
 - [ShipEngineApi::StampsAccountUrlsResponseBody](docs/StampsAccountUrlsResponseBody.md)
 - [ShipEngineApi::TagResponseBody](docs/TagResponseBody.md)
 - [ShipEngineApi::TrackEvent](docs/TrackEvent.md)
 - [ShipEngineApi::TrackingInformationResponseBody](docs/TrackingInformationResponseBody.md)
 - [ShipEngineApi::TrackingStatus](docs/TrackingStatus.md)
 - [ShipEngineApi::Type](docs/Type.md)
 - [ShipEngineApi::UpdateWebhookRequestBody](docs/UpdateWebhookRequestBody.md)
 - [ShipEngineApi::UpsAccountInformationRequestBody](docs/UpsAccountInformationRequestBody.md)
 - [ShipEngineApi::UpsAccountSettings](docs/UpsAccountSettings.md)
 - [ShipEngineApi::UpsInvoice](docs/UpsInvoice.md)
 - [ShipEngineApi::UpsPickupType](docs/UpsPickupType.md)
 - [ShipEngineApi::UrlType](docs/UrlType.md)
 - [ShipEngineApi::V1LabelsResponse](docs/V1LabelsResponse.md)
 - [ShipEngineApi::ValidateAddress](docs/ValidateAddress.md)
 - [ShipEngineApi::ValidationStatus](docs/ValidationStatus.md)
 - [ShipEngineApi::VoidLabelResponseBody](docs/VoidLabelResponseBody.md)
 - [ShipEngineApi::Warehouse](docs/Warehouse.md)
 - [ShipEngineApi::WarehouseListResponseBody](docs/WarehouseListResponseBody.md)
 - [ShipEngineApi::WarehouseRequestBody](docs/WarehouseRequestBody.md)
 - [ShipEngineApi::WebhookResponseBody](docs/WebhookResponseBody.md)
 - [ShipEngineApi::Weight](docs/Weight.md)
 - [ShipEngineApi::WeightUnit](docs/WeightUnit.md)


## Documentation for Authorization


### api-key

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: HTTP header

