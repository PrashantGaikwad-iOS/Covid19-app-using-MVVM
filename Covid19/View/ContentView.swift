//
//  ContentView.swift
//  Covid19
//
//  Created by Prashant Gaikwad on 20/07/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var countryVM: CountryViewModel
    
    init() {
        self.countryVM = CountryViewModel()
    }
    
    var body: some View {
        
        VStack(alignment:.center) {
            Text("COVID Report")
                .font(.largeTitle)
                .padding()
            
            TextField("Enter country name here...", text: self.$countryVM.countryName) {
                self.countryVM.search()
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 20)
            
            
            VStack(alignment:.center,spacing:20) {
                
                Image(uiImage: self.countryVM.flag)
                    .cornerRadius(10)
                
                Text("Total Cases: \(self.countryVM.total)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(width: 350, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .background(Color.red)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                
                Text("Active Cases: \(self.countryVM.active)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .lineLimit(nil)
                    .frame(width: 350, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.orange)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                
                Text("Recovered Cases: \(self.countryVM.recovered)")
                    .font(.system(size: 25))
                    .fontWeight(.medium)
                    .lineLimit(nil)
                    .frame(width: 350, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.green)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}




/*
 
 if data.country != nil {
 }else{
 Indicator()
 }
 
 
 VStack(alignment:.center,spacing:20) {
 
 Image(uiImage: getImage(imgString: data.country.countryInfo.flag))
 
 Text("Total Cases: \(getValue(data: data.country.cases))")
 .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
 .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
 .frame(width: 350, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
 .multilineTextAlignment(.center)
 .lineLimit(nil)
 .background(Color.red)
 
 Text("Active Cases: \(getValue(data: data.country.active))")
 .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
 .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
 .lineLimit(nil)
 .frame(width: 350, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
 .background(Color.orange)
 
 Text("Recovered Cases: \(getValue(data: data.country.recovered))")
 .font(.system(size: 25))
 .fontWeight(.medium)
 .lineLimit(nil)
 .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
 .frame(width: 350, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
 .background(Color.green)
 }
 */
