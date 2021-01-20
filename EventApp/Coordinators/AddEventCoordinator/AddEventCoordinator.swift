//
//  AddEventCoordinator.swift
//  EventApp
//
//  Created by Abdul Moiz on 1/9/21.
//

import Foundation
import UIKit


final class AddEventCoordinator : Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    private var navigationController:UINavigationController
    var parentCoordinator:EventListCoordinator?
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
//        let viewController = UIViewController()
//        viewController.view.backgroundColor = .blue
//        navigationController.present(viewController , animated: true, completion: nil)
        
        let addEventViewController:AddEventViewController = .instantiate()
        let viewModel = addEventViewModel()
        addEventViewController.viewModel = viewModel
        navigationController.present(addEventViewController, animated: true, completion: nil)
        
    }
    
    func didFinishAddEvent(){
        parentCoordinator?.childDidFinish()
        
    }
    
    
}
