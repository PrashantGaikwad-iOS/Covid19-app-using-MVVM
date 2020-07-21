//
//  Loader.swift
//  Covid19
//
//  Created by Prashant Gaikwad on 20/07/20.
//

import SwiftUI
import UIKit

struct Indicator: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<Indicator>) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Indicator>) {
        
    }
}


//func getValue(data: Double) -> String {
//    let format = NumberFormatter()
//    format.numberStyle = .decimal
//    return format.string(from: NSNumber(value: data))!
//}
//
//func getImage(imgString: String) -> UIImage {
//    let imgUrl = URL(string: imgString)
//    let imgData = try! Data(contentsOf: imgUrl!)
//    let img = UIImage(data: imgData)
//    return img!
//}
