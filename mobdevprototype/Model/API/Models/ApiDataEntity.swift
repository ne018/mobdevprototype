//
//  ApiDataEntity.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import ObjectMapper

class ApiDataEntity: NSObject, Mappable, DataEntity {
    
    var fk_country = ""
    var status = ""
    var attribute_set_name = ""
    var attribute_set_name_local = ""
    var approved = ""
    var status_supplier_config = ""
    var activated_at = ""
    var listing_start = ""
    var listing_end = ""
    var fk_vertical = ""
    var fk_catalog_brand = ""
    var fk_catalog_brand_model = ""
    var brand_model_edition = ""
    var listing_type = ""
    var listing_country = ""
    var listing_area = ""
    var condition = ""
    var condition_position = ""
    var condition_id = ""
    var color_family_position = ""
    var color_family_id = ""
    var doors_position = ""
    var doors_id = ""
    var power = ""
    var drive_type_position = ""
    var drive_type_id = ""
    var interior = ""
    var exterior = ""
    var equipment = ""
    var warranty_type_position = ""
    var warranty_type_id = ""
    var warranty_years_position = ""
    var warranty_years_id = ""
    var price_conditions_position = ""
    var price_conditions_id = ""
    var premium_listing = ""
    var alternate_sku = ""
    var original_name = ""
    var root_category = ""
    var agency_logo = ""
    var new_product = ""
    var url = ""
    var id = ""
    var location_latitude = ""
    var location_longitude = ""
    var google_formatted_address = ""
    var google_place_id = ""
    var fk_customer_address = ""
    var listing_region = ""
    var listing_city = ""
    var agency_address = ""
    var agency_city = ""
    var fk_country_region = ""
    var fk_country_region_city = ""
    var fk_country_region_city_area = ""
    var show_listing_address = ""
    var item_contact_name = ""
    var item_contact_email = ""
    var item_contact_mobile = ""
    var item_contact_homephone = ""
    var agency_name = ""
    var product_owner_url_key = ""
    var product_owner = ""
    var fk_customer = ""
    var is_agent = ""
    var seller_is_trusted = ""
    var show_officephone = ""
    var show_homephone = ""
    var show_mobile = ""
    var sku = ""
    var id_catalog_config = ""
    var attribute_set_id = ""
    var original_price_currency = ""
    var is_certified = ""
    var name = ""
    var desc = ""
    var urlkey_details = ""
    var price_not_available = ""
    var price = ""
    var original_price = ""
    var brand = ""
    var brand_model = ""
    var top_position = ""
    var mileage_not_available = ""
    var mileage = ""
    var config_id = ""
    var rejected_comment = ""
    var transmission = ""
    var transmission_position = ""
    var transmission_id = ""
    var fuel = ""
    var fuel_position = ""
    var fuel_id = ""
    private var _simples: ApiSimplesEntity?
    var simples: SimplesEntity? {
        return _simples
    }
    private var _attributes: ApiAttributesEntity?
    var attributes: AttributesEntity? {
        return _attributes
    }
    
    override init(){
        super.init()
    }
    
    required public init?(map: Map) {
        super.init()
    }
    
    func mapping(map: Map){
        fk_country <- map["fk_country"]
        status <- map["status"]
        attribute_set_name <- map["attribute_set_name"]
        attribute_set_name_local <- map["attribute_set_name_local"]
        approved <- map["approved"]
        status_supplier_config <- map["status_supplier_config"]
        activated_at <- map["activated_at"]
        listing_start <- map["listing_start"]
        listing_end <- map["listing_end"]
        fk_vertical <- map["fk_vertical"]
        fk_catalog_brand <- map["fk_catalog_brand"]
        fk_catalog_brand_model <- map["fk_catalog_brand_model"]
        brand_model_edition <- map["brand_model_edition"]
        listing_type <- map["listing_type"]
        listing_country <- map["listing_country"]
        listing_area <- map["listing_area"]
        condition <- map["condition"]
        condition_position <- map["condition_position"]
        condition_id <- map["condition_id"]
        color_family_position <- map["color_family_position"]
        color_family_id <- map["color_family_id"]
        doors_position <- map["doors_position"]
        doors_id <- map["doors_id"]
        power <- map["power"]
        drive_type_position <- map["drive_type_position"]
        drive_type_id <- map["drive_type_id"]
        interior <- map["interior"]
        exterior <- map["exterior"]
        equipment <- map["equipment"]
        warranty_type_position <- map["warranty_type_position"]
        warranty_type_id <- map["warranty_type_id"]
        warranty_years_position <- map["warranty_years_position"]
        warranty_years_id <- map["warranty_years_id"]
        price_conditions_position <- map["price_conditions_position"]
        price_conditions_id <- map["price_conditions_id"]
        premium_listing <- map["premium_listing"]
        alternate_sku <- map["alternate_sku"]
        original_name <- map["original_name"]
        root_category <- map["root_category"]
        agency_logo <- map["agency_logo"]
        new_product <- map["new_product"]
        url <- map["url"]
        id <- map["id"]
        location_latitude <- map["location_latitude"]
        location_longitude <- map["location_latitude"]
        google_formatted_address <- map["google_formatted_address"]
        google_place_id <- map["google_place_id"]
        fk_customer_address <- map["fk_customer_address"]
        listing_region <- map["listing_region"]
        listing_city <- map["listing_city"]
        agency_address <- map["agency_address"]
        agency_city <- map["agency_city"]
        fk_country_region <- map["fk_country_region"]
        fk_country_region_city <- map["fk_country_region_city"]
        fk_country_region_city_area <- map["fk_country_region_city_area"]
        show_listing_address <- map["show_listing_address"]
        item_contact_name <- map["item_contact_name"]
        item_contact_email <- map["item_contact_email"]
        item_contact_mobile <- map["item_contact_mobile"]
        item_contact_homephone <- map["item_contact_homephone"]
        agency_name <- map["agency_name"]
        product_owner_url_key <- map["product_owner_url_key"]
        product_owner <- map["product_owner"]
        fk_customer <- map["fk_customer"]
        is_agent <- map["is_agent"]
        seller_is_trusted <- map["seller_is_trusted"]
        show_officephone <- map["show_officephone"]
        show_homephone <- map["show_homephone"]
        show_mobile <- map["show_mobile"]
        sku <- map["sku"]
        id_catalog_config <- map["id_catalog_config"]
        attribute_set_id <- map["attribute_set_id"]
        original_price_currency <- map["original_price_currency"]
        is_certified <- map["is_certified"]
        name <- map["name"]
        desc <- map["description"]
        urlkey_details <- map["urlkey_details"]
        price_not_available <- map["price_not_available"]
        price <- map["price"]
        original_price <- map["original_price"]
        brand <- map["brand"]
        brand_model <- map["brand_model"]
        top_position <- map["top_position"]
        mileage_not_available <- map["mileage_not_available"]
        mileage <- map["mileage"]
        config_id <- map["config_id"]
        rejected_comment <- map["rejected_comment"]
        transmission <- map["transmission"]
        transmission_position <- map["transmission_position"]
        transmission_id <- map["transmission_id"]
        fuel <- map["fuel"]
        fuel_position <- map["fuel_position"]
        fuel_id <- map["fuel_id"]
        _simples <- map["simples"]
        _attributes <- map["attributes"]
    }
}
