//
//  SaldoTransacoesView.swift
//  AppBase
//
//  Created by Natanael Alves Pereira on 28/03/22.
//

import UIKit

class SaldoTransacoesView: UIView {

    lazy var saldoLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .green
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.text = "Saldo PicCorp"
        
        return label
    }()
    
    lazy var saldoNumeroLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .green
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.text = "R$ 10.520.330,00"
        
        return label
    }()
    
    lazy var olhoAbertoImageButton:UIButton = {
        let button = UIButton()
        let imageBack = UIImage(named: "aberto")
        button.setImage(imageBack, for: .normal)
        button.setImageTintColor(.green)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var extratoButton:UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Extrato", for: .normal)
        button.setTitleColor(.green, for: .normal)
        button.titleLabel?.font =  UIFont.systemFont(ofSize: 17 , weight: .black)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = UIColor(red: 52/255, green: 47/255, blue: 37/255, alpha: 1.0)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.setUpConstraints()
    }
    
    private func configSuperView(){
        self.addSubview(saldoLabel)
        self.addSubview(saldoNumeroLabel)
        self.addSubview(olhoAbertoImageButton)
        self.addSubview(extratoButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
            self.saldoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4),

            self.saldoNumeroLabel.topAnchor.constraint(equalTo: self.saldoLabel.bottomAnchor, constant: 3),
            self.saldoNumeroLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4),
    
            self.olhoAbertoImageButton.topAnchor.constraint(equalTo: self.saldoNumeroLabel.topAnchor),
            self.olhoAbertoImageButton.leadingAnchor.constraint(equalTo: self.saldoNumeroLabel.trailingAnchor,constant: 4),
            self.olhoAbertoImageButton.widthAnchor.constraint(equalToConstant: 25),
            self.olhoAbertoImageButton.heightAnchor.constraint(equalToConstant: 25),
            
            self.extratoButton.topAnchor.constraint(equalTo: self.saldoLabel.topAnchor),
            self.extratoButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.extratoButton.widthAnchor.constraint(equalToConstant: 150),
            self.extratoButton.heightAnchor.constraint(equalToConstant: 40),
        ])
   
    }
}

import SwiftUI
import UIViewCanvas

struct  MyPreview3 : PreviewProvider {
     static  var previews: some View {
         ViewCanvas ( for :  SaldoTransacoesView())
    }
}
