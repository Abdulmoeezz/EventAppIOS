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
        addEventCoordinator.parentCoordinator = self
        childCoordinators.append(addEventCoordinator)
        addEventCoordinator.start()
        }
    
    func childDidFinish(_ childcoordinator:Coordinator){
        
        if let  index = childCoordinators.firstIndex(where: { coordinator -> Bool in
            return childcoordinator === coordinator
        }){
            childCoordinators.remove(at: index)
        }
        
    }
    
}
