//
//  CabanaSizeViewController.swift
//  CanabaTask
//
//  Created by AppStation on 08/01/25.
//

import UIKit

class CabanaViewController: UIViewController {

    @IBOutlet weak var centerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUi()
  
    }
    
    func configureUi(){
        centerView.clipsToBounds = true
        centerView.layer.cornerRadius = 20
        centerView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }


}
