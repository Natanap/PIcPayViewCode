//
//  ItensCollectionViewCell.swift
//  AppBase
//
//  Created by Natanael Alves Pereira on 30/03/22.
//

import UIKit

class ItensCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ItensCollectionViewCell"
    
    lazy var imgAvatar: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .blue
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 70/2
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var nameTransationLabel: UILabel = {
        let label = UILabel()
        label.textColor = .green
        label.font = UIFont.systemFont(ofSize: 13)
        label.numberOfLines = 2
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imgAvatar)
        contentView.addSubview(nameTransationLabel)
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    func configureCell(imageName: String, name: String){
        imgAvatar.image = UIImage(named: imageName)
        nameTransationLabel.text = name
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            imgAvatar.topAnchor.constraint(equalTo: self.topAnchor),
            imgAvatar.widthAnchor.constraint(equalToConstant: 70),
            imgAvatar.heightAnchor.constraint(equalToConstant: 70),
            
            nameTransationLabel.topAnchor.constraint(equalTo: self.imgAvatar.bottomAnchor, constant: 2),
            nameTransationLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            nameTransationLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            nameTransationLabel.widthAnchor.constraint(equalToConstant: 20),
        ])
    }
    
  
}
