//
//  ViewController.swift
//  PFM - iOS
//
//  Created by Pablo Benner on 07/02/23.
//

import UIKit

class FinancesViewController: UIViewController {

    var financesScreenView = FinancesScreenView()
    var idTap: Int!
    
    override func loadView() {
        view = financesScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        financesScreenView.tableView.delegate = self
        financesScreenView.tableView.dataSource = self

    }
    
//
//    func tapAnalises(){
//        let tap = UITapGestureRecognizer(target: self, action: #selector(actionLabel))
//        financesScreenView.analisesLbl.addGestureRecognizer(tap)
//        financesScreenView.analisesLbl.isUserInteractionEnabled = true
//
//        idTap = 0
//    }
//
//    func tapTrans(){
//        let tap = UITapGestureRecognizer(target: self, action: #selector(actionLabel))
//        financesScreenView.transLbl.addGestureRecognizer(tap)
//        financesScreenView.transLbl.isUserInteractionEnabled = true
//
//        idTap = 1
//    }
//
//    @objc func actionLabel() {
//        if idTap == 0 {
//            let alert = UIAlertController(title: "Funciona", message: "\(idTap)", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Ok", style: .default))
//            present(alert, animated: true)
//        } else {
//            let alert = UIAlertController(title: "Funciona", message: "\(idTap)", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Ok", style: .default))
//            present(alert, animated: true)
//        }
//    }
}

extension FinancesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: financesScreenView.cellId, for: indexPath) as! FinancesTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.item)
        print(indexPath.row)
        print(indexPath.section)
    }
    
   
    
}

