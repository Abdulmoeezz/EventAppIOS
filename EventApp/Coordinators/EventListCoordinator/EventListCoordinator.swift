//
//  EventListCoordinator.swift
//  EventApp
//
//  Created by Abdul Moiz on 1/9/21.
//

import Foundation
import UIKit


final class EventListCoordinator:Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    private var navigationController:UINavigationController
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let meventlistViewController:eventListViewController = .instantiate()
        let eventList = eventListViewModel()
        let viewmodel = eventList
        viewmodel.coordinator = self
        meventlistViewController.veiwModel = viewmodel
        navigationController.setViewControllers([meventlistViewController], animated: false)
        
    }
    
    
    func startAddEvent(){
        let addEventCoordinator = AddEventCoordinator(navigationController: navigationController)
        childCoordinators.append(addEventCoordinator)
        addEventCoordinator.start()
        }
    
    func childDidFinish(){
        
    }
    
}
