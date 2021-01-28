//
//  AddEventViewController.swift
//  EventApp
//
//  Created by mux on 20/01/2021.
//

import Foundation
import UIKit

class AddEventViewController : UIViewController {

    var viewModel : addEventViewModel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.viewDidDisappear()
        
    }
    
    
    


}
