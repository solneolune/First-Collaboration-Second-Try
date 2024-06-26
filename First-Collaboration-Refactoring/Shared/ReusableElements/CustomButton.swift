//
//  CustomButtonSwift.swift
//  First-Collaboration-Refactoring
//
//  Created by Barbare Tepnadze on 19.05.24.
//

import UIKit

class CustomButton: UIButton {

    // Custom initializer
    init(title: String, backgroundColor: UIColor, setTitleColor: UIColor) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(setTitleColor, for: .normal)
        self.layer.cornerRadius = 10
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // Method to update button title and background color
    func update(title: String, backgroundColor: UIColor, setTitleColor: UIColor) {
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(setTitleColor, for: .normal)
    }
}
