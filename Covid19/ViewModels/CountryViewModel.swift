//
//  CountryViewModel.swift
//  Covid19
//
//  Created by Prashant Gaikwad on 20/07/20.
//

import Foundation
import Combine
import UIKit

class CountryViewModel: ObservableObject {
    
    @Published var countryResponse = CountryResponse()
    
    private var covidService: CovidService!
    
    init() {
        self.covidService = CovidService()
    }
    
    var total: String {
        if let temp = self.countryResponse.cases {
            let format = NumberFormatter()
            format.numberStyle = .decimal
            return format.string(from: NSNumber(value: temp))!
        }
        else{
            return ""
        }
    }
    
    var active: String {
        if let temp = self.countryResponse.active {
            let format = NumberFormatter()
            format.numberStyle = .decimal
            return format.string(from: NSNumber(value: temp))!
        }
        else{
            return ""
        }
    }
    
    var recovered: String {
        if let temp = self.countryResponse.recovered {
            let format = NumberFormatter()
            format.numberStyle = .decimal
            return format.string(from: NSNumber(value: temp))!
        }
        else{
            return ""
        }
    }
    
    var flag: UIImage {
        if let temp = self.countryResponse.countryInfo.flag {
            if let imgUrl = URL(string: temp) {
                let imgData = try! Data(contentsOf: (imgUrl))
                let img = UIImage(data: imgData)
                return img!
            }else{
                return UIImage.init()
            }
        }
        else{
            return UIImage.init()
        }
    }
    
    var countryName: String = ""
    
    func search() {
        if let country = self.countryName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            fetchCountryData(by: country)
        }
    }
    
    private func fetchCountryData(by country: String) {
        
        self.covidService.fetchData(country: country) { country in
            
            if let countryData = country {
                DispatchQueue.main.async {
                    self.countryResponse = countryData
                }
            }
        }
        
    }
    
}
