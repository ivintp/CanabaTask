//
//  NameOfCustomizationViewController.swift
//  CanabaTask
//
//  Created by AppStation on 16/01/25.
//

import UIKit

class NameOfCustomizationViewController: UIViewController {
    // MARK: - OUTLET
    @IBOutlet weak var ViewAddName: UIView?
    @IBOutlet weak var TextFieldAddName: UITextField?
    @IBOutlet weak var viewGpsImage: UIView?
    
    //MARK: - PROPERTIES
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUi()
       
    }
    func configureUi(){
        ViewAddName?.layer.cornerRadius = 10
        viewGpsImage?.layer.cornerRadius = 10
    }
    
    
}
