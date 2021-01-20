//
//  addEventViewModel.swift
//  EventApp
//
//  Created by mux on 20/01/2021.
//

import Foundation
import UIKit

final class addEventViewModel {
    
    var coordinator: AddEventCoordinator?
    
    func viewDidDisappear(){
        coordinator?.didFinishAddEvent()
    }
    
    
}
