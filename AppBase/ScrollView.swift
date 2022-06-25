//
//  ScrollView.swift
//  AppBase
//
//  Created by Natanael Alves Pereira on 26/03/22.
//

import UIKit

class ScrollView: UIView {

    let scrollView = UIScrollView()
    let contentView = UIView()
    
    
    var searchView = SearchView()
   
  
    lazy var headerView: UIView = {
        let header = UILabel()
        header.backgroundColor = .black
        header.translatesAutoresizingMaskIntoConstraints = false
        
        return header
    }()
    
    lazy var imagePerfil:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "user")
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 35
        image.layer.masksToBounds = false
        image.clipsToBounds = true
        
        return image
    }()
    
    lazy var saudacaoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .green
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.text = "Olá,"
        
        return label
    }()
    
    lazy var goButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("@filhote", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.green, for: .normal)
        return button
    }()
    
    lazy var goImageButton:UIButton = {
        let button = UIButton()
        let imageBack = UIImage(named: "go")
        button.setImage(imageBack, for: .normal)
        button.setImageTintColor(.green)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var presenteImage:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "gift")
        image.tintColor = .green
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var linhaView: UIView = {
        let view = UIView()
        let insets: UIEdgeInsets = .zero
        let weight: CGFloat = 0.5 / UIScreen.main.scale
       
        view.backgroundColor = .darkGray
        view.translatesAutoresizingMaskIntoConstraints = false
    
        return view
    }()
    
    lazy var saldoTransacoes: UIView = {
        let view = SaldoTransacoesView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var transacoes: UIStackView = {
        let view = TransacoesStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        setUpConstraints()
        setupScrollView()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview(){
        self.addSubview(scrollView)
        self.scrollView.addSubview(contentView)
        self.contentView.addSubview(searchView)
        self.contentView.addSubview(headerView)
        self.headerView.addSubview(imagePerfil)
        self.headerView.addSubview(saudacaoLabel)
        self.headerView.addSubview(goButton)
        self.headerView.addSubview(goImageButton)
        self.headerView.addSubview(presenteImage)
        self.addSubview(linhaView)
        self.headerView.addSubview(transacoes)
        self.headerView.addSubview(saldoTransacoes)
    }
    
    func setupScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        searchView.translatesAutoresizingMaskIntoConstraints = false
        
 
        scrollView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
//        collection.topAnchor.constraint(equalTo: self.transacoes.bottomAnchor, constant: 30).isActive = true
//        collection.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor).isActive = true
//        collection.leadingAnchor.constraint(equalTo: self.scrollView.trailingAnchor).isActive = true
//        collection.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    func setupViews(){
        headerView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 290).isActive = true
        searchView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        searchView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 15).isActive = true
        searchView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor).isActive = true
        searchView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor).isActive = true
        searchView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
//        searchView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        searchView.backgroundColor = UIColor(red: 52/255, green: 47/255, blue: 37/255, alpha: 1.0)
        
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
            self.imagePerfil.topAnchor.constraint(equalTo: self.headerView.topAnchor, constant: 20),
            self.imagePerfil.leadingAnchor.constraint(equalTo: self.headerView.leadingAnchor, constant: 10),
            self.imagePerfil.widthAnchor.constraint(equalToConstant: 70),
            self.imagePerfil.heightAnchor.constraint(equalToConstant: 70),
            
            self.saudacaoLabel.topAnchor.constraint(equalTo: self.imagePerfil.topAnchor),
            self.saudacaoLabel.leadingAnchor.constraint(equalTo: self.imagePerfil.trailingAnchor, constant: 10),
            
            self.goButton.topAnchor.constraint(equalTo: self.saudacaoLabel.bottomAnchor, constant: 5),
            self.goButton.leadingAnchor.constraint(equalTo: self.imagePerfil.trailingAnchor, constant: 10),
            self.goButton.widthAnchor.constraint(equalToConstant: 70),
            self.goButton.heightAnchor.constraint(equalToConstant: 30),
            
            self.goImageButton.topAnchor.constraint(equalTo: self.goButton.topAnchor),
            self.goImageButton.leadingAnchor.constraint(equalTo: self.goButton.trailingAnchor),
            self.goImageButton.widthAnchor.constraint(equalToConstant: 24),
            self.goImageButton.heightAnchor.constraint(equalToConstant: 30),
            
            self.presenteImage.topAnchor.constraint(equalTo: self.saudacaoLabel.bottomAnchor),
            self.presenteImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.presenteImage.widthAnchor.constraint(equalToConstant: 35),
            self.presenteImage.heightAnchor.constraint(equalToConstant: 35),
            
            
            self.linhaView.topAnchor.constraint(equalTo: self.imagePerfil.bottomAnchor, constant: 5),
            self.linhaView.heightAnchor.constraint(equalToConstant: 1),
            self.linhaView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 6),
            self.linhaView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -6),
            
            self.saldoTransacoes.topAnchor.constraint(equalTo: imagePerfil.bottomAnchor, constant: 20),
            self.saldoTransacoes.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.saldoTransacoes.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.saldoTransacoes.heightAnchor.constraint(equalToConstant: 50),
            
            self.transacoes.topAnchor.constraint(equalTo: saldoTransacoes.bottomAnchor, constant: 10),
            self.transacoes.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.transacoes.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        
        ])
    }
}


extension UIButton{

    func setImageTintColor(_ color: UIColor) {

        let tintedImage = self.imageView?.image?.withRenderingMode(.alwaysTemplate)
        self.setImage(tintedImage, for: .normal)
        self.tintColor = color

    }
}


import SwiftUI
import UIViewCanvas

struct  MyPreview : PreviewProvider {
     static  var previews: some View {
         ViewCanvas ( for :  ScrollView())
    }
}

//struct  MyPreview : PreviewProvider {
//     static  var previews: some View {
//         Group{ViewCanvas ( for :  ScrollView())}.previewLayout(.fixed(width: 350, height: 200))
//
//    }
//}
