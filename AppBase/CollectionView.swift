//
//  CollectionView.swift
//  AppBase
//
//  Created by Natanael Alves Pereira on 31/03/22.
//

import Foundation
import UIKit

class CollectionView: UIView, UICollectionViewDelegate{
    
    lazy var collection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 75, height: 75)
        layout.sectionInset = UIEdgeInsets(top: 0.0, left: 12.0, bottom: 0.0, right: 12.0)

        var collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = UIColor(red: 52/255, green: 47/255, blue: 37/255, alpha: 1.0)
        collection.dataSource = self
        collection.delegate = self
        collection.showsHorizontalScrollIndicator = false
        collection.isScrollEnabled = true
        collection.register(ItensCollectionViewCell.self, forCellWithReuseIdentifier: ItensCollectionViewCell.identifier)
        collection.translatesAutoresizingMaskIntoConstraints = false
        
        return collection
    }()
    
    let stories: [String] = ["img1","pix","debitosV","bart","among","debitosV","img1","pix","debitosV","bart","among","debitosV"]
    let names: [String] = ["Pedir \nEmpréstimo","Fazer Pix \ncom Cartão","Débitos\nVeiculares","@bartsim","@among","Pedir \nEmpréstimo","Fazer Pix \ncom Cartão","Débitos\nVeiculares","@bartsim","@among", "Pedir \nEmpréstimo","Fazer Pix \ncom Cartão"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(collection)
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUpConstraints(){
        collection.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        collection.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        collection.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        collection.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
    }
    
}


extension CollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItensCollectionViewCell.identifier, for: indexPath) as! ItensCollectionViewCell
        cell.configureCell(imageName: stories[indexPath.row], name: names[indexPath.row])
        return cell
    }
       
}
