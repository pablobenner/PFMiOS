//
//  FinancesScreenView.swift
//  PFM - iOS
//
//  Created by Pablo Benner on 07/02/23.
//

import UIKit

class FinancesScreenView: BaseView {
    
    
    
    lazy var container: UIView = {
        let container = UIView()
//        container.layer.masksToBounds = true
        container.backgroundColor = .white
        container.layer.cornerRadius = 20
        
        return container
        
        
    }()
    
    lazy var container2: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor(red: 0, green: 100, blue: 0)
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
        saldo.text = "R$ 641.121,06"
        saldo.textColor = .white
        saldo.font = .boldSystemFont(ofSize: 21)
        
        
        return saldo
        
        
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
   
    override func addSubviews() {
        addSubview(container)
        addSubview(container2)
        addSubview(addCardsButton)
        container2.addSubview(saldoLabel)
        container.addSubview(searchBar)
        
        
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
            padding: .init(top: 50, left: 85, bottom: 0, right: 0),
            size: .init(width: 150, height: 50))
        
        searchBar.anchor(
            top: container.topAnchor,
            leading: container.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 30, bottom: 0, right: 0),
            size: .init(width: 340, height: 130))
        
        
        }
    
    
    
}


    
    
    

