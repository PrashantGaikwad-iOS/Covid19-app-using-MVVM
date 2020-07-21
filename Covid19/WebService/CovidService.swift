//
//  Service.swift
//  Covid19
//
//  Created by Prashant Gaikwad on 20/07/20.
//

import Foundation

class CovidService {
    
//    @Published var country: Country!
//
//    init(country: String) {
//        fetchData(country: country)
//    }
    
    func fetchData(country: String, completion: @escaping (CountryResponse?) -> ()) {
//        let url = "https://corona.lmao.ninja/v3/covid-19/countries/\(country)"
//
//        URLSession.shared.dataTask(with: URL(string: url)!) { (data, reponse, error) in
//
//            if error != nil {
//                print(error?.localizedDescription ?? "Error")
//                return
//            }
//
//            let jsonData = try! JSONDecoder().decode(Country.self,from:data!)
//
//            DispatchQueue.main.async {
//                self.country = jsonData
//            }
//        }.resume()
        
        guard let url = URL(string: "https://corona.lmao.ninja/v3/covid-19/countries/\(country)") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let responseData = try? JSONDecoder().decode(CountryResponse.self,from:data)
            if let countryResponse = responseData {
                completion(countryResponse)
            }else{
                completion(nil)
            }
        }.resume()
    }
    
}
