//
//  BuildViewController.swift
//  CanabaTask
//
//  Created by AppStation on 08/01/25.
//

import UIKit

class BuildViewController: UIViewController {

//  MARK: - Outlets
    @IBOutlet weak var standardSelectedView: UIView!
    @IBOutlet weak var customSelectedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUi()
       
    }
//      MARK: - Configuration of UI
    func configureUi(){
        
        standardSelectedView.layer.borderWidth = 2
        standardSelectedView.layer.borderColor = UIColor(named: "selectedBorderColor")?.cgColor
        standardSelectedView.layer.cornerRadius = 12
        customSelectedView.layer.borderWidth = 2
        customSelectedView.layer.borderColor = UIColor(named: "selectedBorderColor")?.cgColor
        customSelectedView.layer.cornerRadius = 12
    }

 

}
