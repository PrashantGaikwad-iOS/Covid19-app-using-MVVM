//
//  Country.swift
//  Covid19
//
//  Created by Prashant Gaikwad on 20/07/20.
//

import Foundation

struct CountryResponse: Decodable {
    
    var country: String?
    var updated: Double?
    var cases: Double?
    var recovered: Double?
    var active: Double?
    var countryInfo: CountryInfo
    
    init() {
        self.country = ""
        self.updated = 0.0
        self.cases = 0.0
        self.recovered = 0.0
        self.active = 0.0
        self.countryInfo = CountryInfo()
    }
    
}

struct CountryInfo: Decodable {

    var _id: Int?
    var flag: String?

    init() {
        self._id = 0
        self.flag = ""
    }
}
