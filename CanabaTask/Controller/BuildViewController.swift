//
//  BuildViewController.swift
//  CanabaTask
//
//  Created by AppStation on 08/01/25.
//

//enum BuildViewType: String{
//    case
//}

import UIKit


class BuildViewController: UIViewController {
    
    // MARK: - OUTLET
    @IBOutlet weak var standardSelectedView: UIView?
    @IBOutlet weak var customSelectedView: UIView?
    @IBOutlet weak var customSelectedButton: UIButton?
    @IBOutlet weak var standardSelectedButton: UIButton?
    @IBOutlet weak var standardSelectedMainView: UIView?
    @IBOutlet weak var customSelectedMainView: UIView?
    @IBOutlet weak var standarLabel: UILabel?
    @IBOutlet weak var customLabel: UILabel?
    @IBOutlet weak var standardSelectedImage: UIImageView?
    @IBOutlet weak var customSelectedImage: UIImageView?
    
    
    //MARK: - PROPERTIES
    var isClicked = Bool()
    var standardValueIs: Bool = true
    var customValueIs: Bool = true
    var index: Int = 0
    var valueIs = Bool()
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUi()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let cabanaView = segue.destination as? CabanaViewController
            cabanaView?.isClicked = isClicked
    }
    // MARK: - Configuration of UI
    func configureUi(){
        
        standardSelectedView?.layer.borderWidth = 1
        standardSelectedView?.layer.borderColor = UIColor(named: "selectedBorderColor")?.cgColor
        standardSelectedView?.layer.cornerRadius = 12
//        standardSelectedImage?.layer.cornerRadius = 20
        //customSelectedImage?.layer.cornerRadius = 12
        customSelectedView?.layer.borderWidth = 1
        customSelectedView?.layer.borderColor = UIColor(named: "selectedBorderColor")?.cgColor
        customSelectedView?.layer.cornerRadius = 12
    }
    
    @IBAction func customeButtonAction(_ sender: UIButton) {
        if standardValueIs == true{
            UIView.animate(withDuration: 0.5) {
                self.customValueIs.toggle()
                self.isClicked = false
                self.index = self.customValueIs ? 0 : 1
                self.customSelectedMainView?.layer.borderWidth = self.customValueIs ?  0 : 3
                self.customSelectedMainView?.layer.borderColor = UIColor(named: self.customValueIs ? "selectedBorderColor" :  "ButtonColor")?.cgColor
                self.customSelectedView?.backgroundColor = UIColor(named: self.customValueIs ? "TopBackground" : "ButtonColor")
                self.customSelectedMainView?.backgroundColor = UIColor(named: self.customValueIs ? "TopBackground" : "Backgorund")
                self.customSelectedImage?.image = UIImage(named: self.customValueIs ?  "SelectedImageAsColor" : "tick")
            }
        }
    }
    
    @IBAction func standardButtonAction(_ sender: UIButton) {
        if customValueIs == true{
            UIView.animate(withDuration: 0.5) {
                self.standardValueIs.toggle()
                self.isClicked = true
                self.index = self.standardValueIs ? 0 : 1
                self.standardSelectedMainView?.layer.borderWidth = self.standardValueIs ? 0 : 3
                self.standardSelectedMainView?.layer.borderColor = UIColor(named: self.standardValueIs ? "selectedBorderColor" : "ButtonColor")?.cgColor
                self.standardSelectedView?.backgroundColor = UIColor(named: self.standardValueIs ? "TopBackground" : "ButtonColor")
                self.standardSelectedMainView?.backgroundColor = UIColor(named: self.standardValueIs ? "TopBackground" : "Backgorund")
                self.standardSelectedImage?.image = UIImage(named: self.standardValueIs ? "SelectedImageAsColor" : "tick")
            }
        }
    }
    @IBAction func viewCabanasAction(_ sender: UIButton) {

        if index == 0{
            print("Please Select One")
        }
        else if index == 1{
            
            performSegue(withIdentifier: "CabanaViewController", sender: sender)
        }
    }
    
}
