//
//  ViewController.swift
//  AppBase
//
//  Created by Natanael Alves Pereira on 24/03/22.
//

import UIKit

class Tabbar: UITabBarController{
    override func viewDidLoad(){
        let inicio = ViewController()
        let carteira = ViewController()
        let pagar = ViewController()
        let notificacoes = ViewController()
        let store = ViewController()
        
        inicio.title = "Inicio"
        carteira.title = "Carteira"
        pagar.title = "Pagar"
        notificacoes.title = "Notificações"
        store.title = "Store"
        
        
        self.setViewControllers([inicio, carteira, pagar, notificacoes, store], animated: false)
        
        guard let items = self.tabBar.items else {return}
        
        let images = ["house","creditcard","dollarsign.circle", "bell.badge", "bag"]
       
        for x in 0...4 {
            items[x].image = UIImage(systemName: images[x])
            //?.withTintColor(.green, renderingMode: .alwaysOriginal) trocar a cor da image
        }
    
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.green], for: .selected)
        self.tabBar.isTranslucent = false
        UITabBar.appearance().tintColor = .green
        self.tabBar.barTintColor = UIColor (.green)
        
    }
    
    
}

class ViewController: UIViewController {

    var scrollView = ScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView = ScrollView()
        self.view = self.scrollView
        view.backgroundColor = UIColor(red: 52/255, green: 47/255, blue: 37/255, alpha: 1.0)
    }
    
    public override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

}





import SwiftUI
import UIViewCanvas

struct  MyPreview2 : PreviewProvider {
     static  var previews: some View {
         ViewControllerCanvas ( for :  ViewController())
    }
}
