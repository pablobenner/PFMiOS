//
//  FinancesScreenView.swift
//  PFM - iOS
//
//  Created by Pablo Benner on 07/02/23.
//

import UIKit

class FinancesScreenView: BaseView {
    
    let cellId = "cellID"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(FinancesTableViewCell.self, forCellReuseIdentifier: cellId)
        //        tableView.backgroundColor = .red
        return tableView
    }()
    
    lazy var container: UIView = {
        let container = UIView()
        //        container.layer.masksToBounds = true
        container.backgroundColor = .white
        container.layer.cornerRadius = 20
        
        return container
        
        
    }()
    
    lazy var container2: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor(red: 28, green: 28, blue: 28)
        container.layer.cornerRadius = 20
        
        
        return container
        
    }()
    lazy var container3: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor(red: 54, green: 54, blue: 54)
        container.layer.cornerRadius = 20
        
        
        return container
        
    }()
    lazy var container4: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor(red: 128, green: 128, blue: 128)
        container.layer.cornerRadius = 20
        
        
        return container
        
    }()
    lazy var container5: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor(red: 192, green: 192, blue: 192)
        container.layer.cornerRadius = 20
        
        
        return container
        
    }()
    
    lazy var addCardsButton: UIButton = {
        let cardButton = UIButton()
        cardButton.translatesAutoresizingMaskIntoConstraints = false
        cardButton.setTitle("Adicionar cartão", for: .normal)
        cardButton.setTitleColor(UIColor(red: 0, green: 255, blue: 127), for: .normal)
        cardButton.layer.masksToBounds = true
        cardButton.layer.cornerRadius = 20
        cardButton.layer.borderColor = UIColor.darkGray.cgColor
        
        return cardButton
        
    }()
    
    lazy var saldoLabel: UILabel = {
        let saldo = UILabel()
        saldo.text = "R$641.121,06"
        saldo.textColor = .white
        saldo.font = .boldSystemFont(ofSize: 21)
        
        
        return saldo
        
        
    }()
    
    lazy var openLabel: UILabel = {
        let open = UILabel()
        open.text = "Saldo open finance"
        open.textColor = .white
        open.font = .systemFont(ofSize: 12)
        
        
        return open
        
        
    }()
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "Buscar"
        searchBar.searchTextField.font = .systemFont(ofSize: 15)
        searchBar.searchTextField.layer.cornerRadius = 3
        searchBar.searchTextField.layer.masksToBounds = true
        
        return searchBar
        
    }()
    
    lazy var transLbl: UILabel = {
        let label = UILabel()
        label.text = "Movimentações"
        label.font = .systemFont(ofSize: 15)
        label.textColor = UIColor(red: 105, green: 105, blue: 105)
        
        return label
        
    }()
    
    lazy var analisesLbl: UILabel = {
        let label = UILabel()
        label.text = "Análises"
        label.font = .systemFont(ofSize: 15)
        label.textColor = UIColor(red: 105, green: 105, blue: 105)
        
        return label
        
    }()
    
    override func addSubviews() {
        addSubview(container5)
        addSubview(container4)
        addSubview(container3)
        addSubview(container2)
        addSubview(container)
        addSubview(addCardsButton)
        container2.addSubview(saldoLabel)
        container2.addSubview(openLabel)
        container.addSubview(searchBar)
        container.addSubview(tableView)
        container.addSubview(transLbl)
        container.addSubview(analisesLbl)
        
//        addBottomBorders()
    }
    
    
    override func addConstraints() {
        
        container.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: safeAreaLayoutGuide.bottomAnchor,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 300, left: 0, bottom: 20, right: 0),
            size: .init(width: frame.width, height: frame.height))
        
        container2.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 50, left: 50, bottom: 0, right: 0),
            size: .init(width: 310, height: 130))
        
        container5.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 15, left: 90, bottom: 0, right: 0),
            size: .init(width: 230, height: 130))
        
        container4.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 25, left: 80, bottom: 0, right: 0),
            size: .init(width: 250, height: 130))
        
        container3.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 35, left: 65, bottom: 0, right: 0),
            size: .init(width: 280, height: 130))
        
        addCardsButton.anchor(
            top: container2.bottomAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 130, bottom: 0, right: 0),
            size: .init(width: 150, height: 50))
        
        saldoLabel.anchor(
            top: container2.topAnchor,
            leading: container2.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 40, left: 85, bottom: 0, right: 0),
            size: .init(width: 150, height: 50))
        
        openLabel.anchor(
            top: nil,
            leading: saldoLabel.leadingAnchor,
            bottom: saldoLabel.bottomAnchor,
            trailing: nil,
            padding: .init(top: 0, left: 8, bottom: 22, right: 0),
            size: .init(width: 130, height: 50))
        
        searchBar.anchor(
            top: container.topAnchor,
            leading: container.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 60, left: 30, bottom: 0, right: 0),
            size: .init(width: 340, height: 80))
        
        tableView.anchor(
            top: container.topAnchor,
            leading: container.leadingAnchor,
            bottom: container.bottomAnchor,
            trailing: container.trailingAnchor,
            padding: .init(top: 120, left: 0, bottom: 0, right: 0),
            size: .init(width: frame.width, height: frame.height))
        
        transLbl.anchor(
            top: container.topAnchor,
            leading: container.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 70, bottom: 0, right: 0),
            size: .init(width: 150, height: 40))
        
        analisesLbl.anchor(
            top: container.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: container.trailingAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 10),
            size: .init(width: 150, height: 40))
        
    }
    
//    func addBottomBorders() {
//        let thickness: CGFloat = 2.0
//        let bottomBorder = CALayer()
//        bottomBorder.frame = CGRect(x:0, y: self.transLbl.frame.size.height - thickness, width: self.transLbl.frame.size.width, height:thickness)
//        bottomBorder.backgroundColor = UIColor.red.cgColor
//        transLbl.layer.addSublayer(bottomBorder)
//
//
//        bottomBorder.frame = CGRect(x:0, y: self.analisesLbl.frame.size.height - thickness, width: self.analisesLbl.frame.size.width, height:thickness)
//        bottomBorder.backgroundColor = UIColor.red.cgColor
//        analisesLbl.layer.addSublayer(bottomBorder)
//
////        analisesLbl.isHidden = true
//    }
}






