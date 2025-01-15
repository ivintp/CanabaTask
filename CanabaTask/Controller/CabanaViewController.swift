//
//  CabanaSizeViewController.swift
//  CanabaTask
//
//  Created by AppStation on 08/01/25.
//

import UIKit

class CabanaViewController: UIViewController {
    
    // MARK: - OUTLET
    @IBOutlet weak var buttonBack: UIButton?
    @IBOutlet weak var labelTitle: UILabel?
    @IBOutlet weak var centerView: UIView?
    var valueOfStandard: String = ""
    var valueOfCustom: String = ""
    var isClicked = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUi()
        if isClicked == true{
            labelTitle?.text = "STANDARD"
        }else{
            labelTitle?.text = "CUSTOM"
        }
    }
    //MARK: - CONFIGURATION OF UI
    func configureUi(){
        centerView?.clipsToBounds = true
        centerView?.layer.cornerRadius = 20
        centerView?.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
    @IBAction func buttomBackAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
}
