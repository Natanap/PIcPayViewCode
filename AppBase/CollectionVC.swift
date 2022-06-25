//
//  CollectionView.swift
//  AppBase
//
//  Created by Natanael Alves Pereira on 30/03/22.
//

import UIKit

class CollectionVC: UIViewController{
    
    var collectionView = CollectionView()
    
    override func loadView() {
        self.view = collectionView
    }
   
}

import SwiftUI
import UIViewCanvas

struct  MyPreview6 : PreviewProvider {
     static  var previews: some View {
         ViewControllerCanvas ( for :  CollectionVC())
    }
}
