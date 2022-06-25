//
//  HeaderView.swift
//  AppBase
//
//  Created by Natanael Alves Pereira on 25/03/22.
//

import UIKit

class SearchView: UIView {
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.searchBarStyle = .default
        searchBar.placeholder = " O que você pode encontrar?"
        searchBar.searchTextField.textColor = .orange
        searchBar.sizeToFit()
        searchBar.barTintColor = UIColor(red: 52/255, green: 47/255, blue: 37/255, alpha: 1.0)
        searchBar.isTranslucent = false
        
        return searchBar
    }()
    
    lazy var sugestoesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .green
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.text = "Sugestões para você"
        
        return label
    }()
    lazy var collectionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var collection: CollectionView = {
        let view = CollectionView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var selecaoView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 52/255, green: 47/255, blue: 37/255, alpha: 1.0)
        view.layer.borderWidth = 1.0
        view.layer.cornerRadius = 10
        return view
    }()
    
    lazy var percentImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "percent")
        image.contentMode = .scaleAspectFit
        image.tintColor = .green
        return image
    }()
    
    lazy var selecaoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .green
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Seleção especial"
        
        return label
    }()
    
    lazy var promocaoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .green
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.text = "Promocões disponíveis"
        
        return label
    }()
    
    lazy var percenteImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "chevron.right")
        image.contentMode = .scaleAspectFit
        image.tintColor = .green
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.setUpConstraints()
        
    }
    
    private func configSuperView(){
        self.addSubview(self.searchBar)
        self.addSubview(self.sugestoesLabel)
        self.addSubview(self.collectionView)
        self.collectionView.addSubview(self.collection)
        self.addSubview(self.selecaoView)
        self.addSubview(self.percentImage)
        self.addSubview(self.selecaoLabel)
        self.addSubview(self.promocaoLabel)
        self.addSubview(self.percenteImage)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            // FORMA NATIVA
            
            self.searchBar.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.searchBar.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.searchBar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 3),
            self.searchBar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -3),
            
            self.sugestoesLabel.topAnchor.constraint(equalTo: self.searchBar.bottomAnchor,constant: 4),
            self.sugestoesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 10),

            self.collectionView.topAnchor.constraint(equalTo: self.sugestoesLabel.bottomAnchor, constant: 10),
            self.collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.collectionView.heightAnchor.constraint(equalToConstant: 130),
            
            self.collection.topAnchor.constraint(equalTo: self.collectionView.topAnchor),
            self.collection.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.collection.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.collection.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.collection.heightAnchor.constraint(equalTo: self.collectionView.heightAnchor),
            

            self.selecaoView.bottomAnchor.constraint(equalTo: self.collectionView.bottomAnchor,constant: 80),
            self.selecaoView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            self.selecaoView.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 8),
            self.selecaoView.heightAnchor.constraint(equalToConstant: 70),
            
            self.percentImage.topAnchor.constraint(equalTo: selecaoView.topAnchor,constant: 20),
            self.percentImage.leadingAnchor.constraint(equalTo: selecaoView.leadingAnchor, constant: 20),
            self.percentImage.heightAnchor.constraint(equalToConstant: 30),
            self.percentImage.widthAnchor.constraint(equalToConstant: 30),
            
            self.selecaoLabel.topAnchor.constraint(equalTo: percentImage.topAnchor),
            self.selecaoLabel.leadingAnchor.constraint(equalTo: percentImage.trailingAnchor, constant: 5),
            self.selecaoLabel.heightAnchor.constraint(equalToConstant: 15),
    
            self.promocaoLabel.topAnchor.constraint(equalTo: selecaoLabel.bottomAnchor,constant: 3),
            self.promocaoLabel.leadingAnchor.constraint(equalTo: percentImage.trailingAnchor, constant: 5),
            self.promocaoLabel.heightAnchor.constraint(equalToConstant: 17),
            
            self.percenteImage.topAnchor.constraint(equalTo: selecaoView.topAnchor , constant: 21),
            self.percenteImage.trailingAnchor.constraint(equalTo: selecaoView.trailingAnchor, constant: -10),
            self.percenteImage.heightAnchor.constraint(equalToConstant: 30),
            self.percenteImage.widthAnchor.constraint(equalToConstant: 30),
        ])
        
    }
    
}
