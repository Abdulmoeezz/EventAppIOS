//
//  AppCoordinator.swift
//  EventApp
//
//  Created by Abdul Moiz on 1/9/21.
//

import Foundation
import UIKit


protocol Coordinator {
    
    var  childCoordinators:[Coordinator] {get }
    func start()
}

final class AppCoordinator:Coordinator {
    
    
   private(set)  var childCoordinators: [Coordinator] = []
    private  let window:UIWindow
    init(window:UIWindow) {
        self.window = window
        }
    
    func start() {
        let navigationController = UINavigationController()
        let meventlistCoordinator = EventListCoordinator(navigationController: navigationController)
        childCoordinators.append(meventlistCoordinator)
        meventlistCoordinator.start()
        
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
    }
    }
