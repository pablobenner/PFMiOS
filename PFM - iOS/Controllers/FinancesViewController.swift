//
//  ViewController.swift
//  PFM - iOS
//
//  Created by Pablo Benner on 07/02/23.
//

import UIKit

class FinancesViewController: UITabBarController {
    
    let cellId = "cellID"
    
    
    var financesScreenView = FinancesScreenView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func loadView() {
        view = financesScreenView
        
    }
    
  
}

