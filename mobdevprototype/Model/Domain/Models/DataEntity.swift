//
//  DataEntity.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

protocol DataEntity: class {
    var fk_country: String { get }
    var status: String { get }
    var attribute_set_name: String { get }
    var attribute_set_name_local: String { get }
    var approved: String { get }
    var status_supplier_config: String { get }
    var activated_at: String { get }
    var listing_start: String { get }
    var listing_end: String { get }
    var fk_vertical: String { get }
    var fk_catalog_brand: String { get }
    var fk_catalog_brand_model: String { get }
    var brand_model_edition: String { get }
    var listing_type: String { get }
    var listing_country: String { get }
    var listing_area: String { get }
    var condition: String { get }
    var condition_position: String { get }
    var condition_id: String { get }
    var color_family_position: String { get }
    var color_family_id: String { get }
    var doors_position: String { get }
    var doors_id: String { get }
    var power: String { get }
    var drive_type_position: String { get }
    var drive_type_id: String { get }
    var interior: String { get }
    var exterior: String { get }
    var equipment: String { get }
    var warranty_type_position: String { get }
    var warranty_type_id: String { get }
    var warranty_years_position: String { get }
    var warranty_years_id: String { get }
    var price_conditions_position: String { get }
    var price_conditions_id: String { get }
    var premium_listing: String { get }
    var alternate_sku: String { get }
    var original_name: String { get }
    var root_category: String { get }
    var agency_logo: String { get }
    var new_product: String { get }
    var url: String { get }
    var id: String { get }
    var location_latitude: String { get }
    var location_longitude: String { get }
    var google_formatted_address: String { get }
    var google_place_id: String { get }
    var fk_customer_address: String { get }
    var listing_region: String { get }
    var listing_city: String { get }
    var agency_address: String { get }
    var agency_city: String { get }
    var fk_country_region: String { get }
    var fk_country_region_city: String { get }
    var fk_country_region_city_area: String { get }
    var show_listing_address: String { get }
    var item_contact_name: String { get }
    var item_contact_email: String { get }
    var item_contact_mobile: String { get }
    var item_contact_homephone: String { get }
    var agency_name: String { get }
    var product_owner_url_key: String { get }
    var product_owner: String { get }
    var fk_customer: String { get }
    var is_agent: String { get }
    var seller_is_trusted: String { get }
    var show_officephone: String { get }
    var show_homephone: String { get }
    var show_mobile: String { get }
    var sku: String { get }
    var id_catalog_config: String { get }
    var attribute_set_id: String { get }
    var original_price_currency: String { get }
    var is_certified: String { get }
    var name: String { get }
    var desc: String { get }
    var urlkey_details: String { get }
    var price_not_available: String { get }
    var price: String { get }
    var original_price: String { get }
    var brand: String { get }
    var brand_model: String { get }
    var top_position: String { get }
    var mileage_not_available: String { get }
    var mileage: String { get }
    var config_id: String { get }
    var rejected_comment: String { get }
    var transmission: String { get }
    var transmission_position: String { get }
    var transmission_id: String { get }
    var fuel: String { get }
    var fuel_position: String { get }
    var fuel_id: String { get }
    var simples: SimplesEntity? { get }
    var attributes: AttributesEntity? { get }
}
