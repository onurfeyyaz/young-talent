//
//  SectionView.swift
//  YoungTalentProgram
//
//  Created by Feyyaz ONUR on 12.03.2023.
//

import UIKit

class SectionView: UITableViewHeaderFooterView {

    let image = UIImageView()
    let name = UILabel()
    let lastMessage = UILabel()

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureContents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureContents() {
        image.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        lastMessage.translatesAutoresizingMaskIntoConstraints = false
        
        name.font = UIFont(name:"Montserrat-Bold", size: 18.0)
        name.textColor = .blueDark
        
        lastMessage.font = UIFont(name:"Montserrat-Regular", size: 14.0)
        lastMessage.textColor = .blueLight
        
        contentView.addSubview(image)
        contentView.addSubview(name)
        contentView.addSubview(lastMessage)
        
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            image.widthAnchor.constraint(equalToConstant: 40),
            image.heightAnchor.constraint(equalToConstant: 40),
            image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
            name.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
            name.heightAnchor.constraint(equalToConstant: 30),
            name.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
            lastMessage.leadingAnchor.constraint(equalTo: name.trailingAnchor, constant: 10),
            lastMessage.heightAnchor.constraint(equalToConstant: 30),
            lastMessage.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor),
            lastMessage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
}
