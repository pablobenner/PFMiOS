//
//  FinancesTableViewCell.swift
//  PFM - iOS
//
//  Created by Pablo Benner on 08/02/23.
//

import UIKit

class FinancesTableViewCell: BaseTableViewCell {
    
    lazy var container: UIView = {
        let container = UIView()
//        container.layer.borderWidth = 1
        container.layer.masksToBounds = true
//        container.layer.borderColor = UIColor.darkGray.cgColor
        container.backgroundColor = .white
        
        return container
        
    }()
    
    override func addSubviews() {
        addSubview(container)
    }
    
    override func setConstraints() {
        
        container.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: safeAreaLayoutGuide.bottomAnchor,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: frame.width, height: 80))
        
    }
    
    
    
    
    
}
