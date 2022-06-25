//
//  TransacoesStackView.swift
//  AppBase
//
//  Created by Natanael Alves Pereira on 29/03/22.
//

import UIKit

class TransacoesStackView: UIStackView {

    var listadeTransacoes:[StoriesTransacoes] = [
        StoriesTransacoes(titulo: "QR \nCode", icon: "qrcode.viewfinder"),
        StoriesTransacoes(titulo: "Pix", icon: "p.circle"),
        StoriesTransacoes(titulo: "Pagar \nBoleto", icon: "barcode.viewfinder"),
        StoriesTransacoes(titulo: "Cobrar", icon: "gobackward"),
    ]
    
    lazy var formStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 5
        stack.backgroundColor = .black
        stack.alignment = .fill
        stack.distribution = .fillEqually
        return stack
    }()
    
    func transacoes(transacao:StoriesTransacoes) -> UIView {
        let button: UIView = {
            let view = UIView()
            let image = UIImageView()
            let label = UILabel()
            view.layer.borderWidth = 1.0
            view.layer.cornerRadius = 15
            
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .green
            label.font = UIFont.boldSystemFont(ofSize: 15)
            label.text = transacao.titulo
            label.numberOfLines = 2
            
            image.translatesAutoresizingMaskIntoConstraints = false
            image.image = UIImage(systemName: transacao.icon)
            image.contentMode = .scaleAspectFit
            image.tintColor = .green
            view.addSubview(image)
            view.addSubview(label)
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 6).isActive = true
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 6).isActive = true
            image.heightAnchor.constraint(equalToConstant: 30).isActive = true
            image.widthAnchor.constraint(equalToConstant: 30).isActive = true
            label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 7).isActive = true
            label.leadingAnchor.constraint(equalTo: image.leadingAnchor).isActive = true
            
            view.backgroundColor = UIColor(red: 52/255, green: 47/255, blue: 37/255, alpha: 1.0)
            return view
        }()
        return button
    }

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(formStackView)
        //Enquanto existir botoes na lista de transacoes ele adiciona uma formStacView
        for t in listadeTransacoes {
            let v = transacoes(transacao: t)
            formStackView.addArrangedSubview(v)
        }
        
        setUpConstraints()
    
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            formStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            formStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -5),
            formStackView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    
}


import SwiftUI
import UIViewCanvas

struct  MyPreview4 : PreviewProvider {
     static  var previews: some View {
         ViewCanvas ( for :  TransacoesStackView())
    }
}
