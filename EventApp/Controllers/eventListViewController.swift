//
//  eventListViewController.swift
//  EventApp
//
//  Created by Abdul Moiz on 1/9/21.
//

import UIKit
import CoreData


class eventListViewController: UIViewController {
    
    
    
    var veiwModel : eventListViewModel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        setUpViews()
       
    }
    
    
    
    func setUpViews(){
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barItem   = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedActionPlusImage))
        barItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barItem
        navigationItem.title = veiwModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
     }
    
    
    @objc func tappedActionPlusImage(){
        print("qq --- its working..")
        veiwModel.tappedAddEvent()
    }
    



}
