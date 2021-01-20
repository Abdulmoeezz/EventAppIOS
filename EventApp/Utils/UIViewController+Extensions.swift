//
//  UIViewController+Extensions.swift
//  EventApp
//
//  Created by mux on 20/01/2021.
//

import Foundation
import UIKit

extension UIViewController {
    
    static func instantiate <T>() -> T{
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(withIdentifier: "\(T.self)") as! T
        return controller
 
   }
    
    
}
