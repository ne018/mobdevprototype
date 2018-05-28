//
//  RealmDataEntity.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmDataEntity: Object, DataEntity {
    
    convenience required public init(copy obj: DataEntity) {
        self.init()
        
        data_id = obj.data_id
        fk_country = obj.fk_country
        status = obj.status
        attribute_set_name = obj.attribute_set_name
        attribute_set_name_local = obj.attribute_set_name_local
        approved = obj.approved
        status_supplier_config = obj.status_supplier_config
        activated_at = obj.activated_at
        listing_start = obj.listing_start
        listing_end = obj.listing_end
        fk_vertical = obj.fk_vertical
        fk_catalog_brand = obj.fk_catalog_brand
        fk_catalog_brand_model = obj.fk_catalog_brand_model
        brand_model_edition = obj.brand_model_edition
        listing_type = obj.listing_type
        listing_country = obj.listing_country
        listing_area = obj.listing_area
        condition = obj.condition
        condition_position = obj.condition_position
        condition_id = obj.condition_id
        color_family_position = obj.color_family_position
        color_family_id = obj.color_family_id
        doors_position = obj.doors_position
        doors_id = obj.doors_id
        power = obj.power
        drive_type_position = obj.drive_type_position
        drive_type_id = obj.drive_type_id
        interior = obj.interior
        exterior = obj.exterior
        equipment = obj.equipment
        warranty_type_position = obj.warranty_type_position
        warranty_type_id = obj.warranty_type_id
        warranty_years_position = obj.warranty_years_position
        warranty_years_id = obj.warranty_years_id
        price_conditions_position = obj.price_conditions_position
        price_conditions_id = obj.price_conditions_id
        premium_listing = obj.premium_listing
        alternate_sku = obj.alternate_sku
        original_name = obj.original_name
        root_category = obj.root_category
        agency_logo = obj.agency_logo
        TheNewProduct = obj.TheNewProduct
        url = obj.url
        id = obj.id
        location_latitude = obj.location_latitude
        location_longitude = obj.location_longitude
        google_formatted_address = obj.google_formatted_address
        google_place_id = obj.google_place_id
        fk_customer_address = obj.fk_customer_address
        listing_region = obj.listing_region
        listing_city = obj.listing_city
        agency_address = obj.agency_address
        agency_city = obj.agency_city
        fk_country_region = obj.fk_country_region
        fk_country_region_city = obj.fk_country_region_city
        fk_country_region_city_area = obj.fk_country_region_city_area
        show_listing_address = obj.show_listing_address
        item_contact_name = obj.item_contact_name
        item_contact_email = obj.item_contact_email
        item_contact_mobile = obj.item_contact_mobile
        item_contact_homephone = obj.item_contact_homephone
        agency_name = obj.agency_name
        product_owner_url_key = obj.product_owner_url_key
        product_owner = obj.product_owner
        fk_customer = obj.fk_customer
        is_agent = obj.is_agent
        seller_is_trusted = obj.seller_is_trusted
        show_officephone = obj.show_officephone
        show_homephone = obj.show_homephone
        show_mobile = obj.show_mobile
        sku = obj.sku
        id_catalog_config = obj.id_catalog_config
        attribute_set_id = obj.attribute_set_id
        original_price_currency = obj.original_price_currency
        is_certified = obj.is_certified
        name = obj.name
        desc = obj.desc
        urlkey_details = obj.urlkey_details
        price_not_available = obj.price_not_available
        price = obj.price
        original_price = obj.original_price
        brand = obj.brand
        brand_model = obj.brand_model
        top_position = obj.top_position
        mileage_not_available = obj.mileage_not_available
        mileage = obj.mileage
        config_id = obj.config_id
        rejected_comment = obj.rejected_comment
        transmission = obj.transmission
        transmission_position = obj.transmission_position
        transmission_id = obj.transmission_id
        fuel = obj.fuel
        fuel_position = obj.fuel_position
        fuel_id = obj.fuel_id
        
        if let attributes = obj.attributes {
            _attributes = RealmAttributesEntity(copy: attributes)
        }
        
    }
    
    dynamic var data_id = 1
    dynamic var fk_country = ""
    dynamic var status = ""
    dynamic var attribute_set_name = ""
    dynamic var attribute_set_name_local = ""
    dynamic var approved = ""
    dynamic var status_supplier_config = ""
    dynamic var activated_at = ""
    dynamic var listing_start = ""
    dynamic var listing_end = ""
    dynamic var fk_vertical = ""
    dynamic var fk_catalog_brand = ""
    dynamic var fk_catalog_brand_model = ""
    dynamic var brand_model_edition = ""
    dynamic var listing_type = ""
    dynamic var listing_country = ""
    dynamic var listing_area = ""
    dynamic var condition = ""
    dynamic var condition_position = ""
    dynamic var condition_id = ""
    dynamic var color_family_position = ""
    dynamic var color_family_id = ""
    dynamic var doors_position = ""
    dynamic var doors_id = ""
    dynamic var power = ""
    dynamic var drive_type_position = ""
    dynamic var drive_type_id = ""
    dynamic var interior = ""
    dynamic var exterior = ""
    dynamic var equipment = ""
    dynamic var warranty_type_position = ""
    dynamic var warranty_type_id = ""
    dynamic var warranty_years_position = ""
    dynamic var warranty_years_id = ""
    dynamic var price_conditions_position = ""
    dynamic var price_conditions_id = ""
    dynamic var premium_listing = ""
    dynamic var alternate_sku = ""
    dynamic var original_name = ""
    dynamic var root_category = ""
    dynamic var agency_logo = ""
    dynamic var TheNewProduct = ""
    dynamic var url = ""
    dynamic var id = ""
    dynamic var location_latitude = ""
    dynamic var location_longitude = ""
    dynamic var google_formatted_address = ""
    dynamic var google_place_id = ""
    dynamic var fk_customer_address = ""
    dynamic var listing_region = ""
    dynamic var listing_city = ""
    dynamic var agency_address = ""
    dynamic var agency_city = ""
    dynamic var fk_country_region = ""
    dynamic var fk_country_region_city = ""
    dynamic var fk_country_region_city_area = ""
    dynamic var show_listing_address = ""
    dynamic var item_contact_name = ""
    dynamic var item_contact_email = ""
    dynamic var item_contact_mobile = ""
    dynamic var item_contact_homephone = ""
    dynamic var agency_name = ""
    dynamic var product_owner_url_key = ""
    dynamic var product_owner = ""
    dynamic var fk_customer = ""
    dynamic var is_agent = ""
    dynamic var seller_is_trusted = ""
    dynamic var show_officephone = ""
    dynamic var show_homephone = ""
    dynamic var show_mobile = ""
    dynamic var sku = ""
    dynamic var id_catalog_config = ""
    dynamic var attribute_set_id = ""
    dynamic var original_price_currency = ""
    dynamic var is_certified = ""
    dynamic var name = ""
    dynamic var desc = ""
    dynamic var urlkey_details = ""
    dynamic var price_not_available = ""
    dynamic var price = ""
    dynamic var original_price = ""
    dynamic var brand = ""
    dynamic var brand_model = ""
    dynamic var top_position = ""
    dynamic var mileage_not_available = ""
    dynamic var mileage = ""
    dynamic var config_id = ""
    dynamic var rejected_comment = ""
    dynamic var transmission = ""
    dynamic var transmission_position = ""
    dynamic var transmission_id = ""
    dynamic var fuel = ""
    dynamic var fuel_position = ""
    dynamic var fuel_id = ""
    
    private var _attributes = RealmAttributesEntity()
    var attributes: AttributesEntity? {
        return _attributes
    }
    
    override class func primaryKey() -> String? {
        return "data_id"
    }
}

