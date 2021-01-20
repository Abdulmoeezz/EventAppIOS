//
//  eventListViewModel.swift
//  EventApp
//
//  Created by Abdul Moiz on 1/9/21.
//

import Foundation

final class eventListViewModel {
    let title = "Event"
    var coordinator :EventListCoordinator?
    func tappedAddEvent(){
        coordinator?.startAddEvent()
        }
    
    
    
}
