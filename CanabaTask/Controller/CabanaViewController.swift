//
//  CabanaSizeViewController.swift
//  CanabaTask
//
//  Created by AppStation on 08/01/25.
//

import UIKit

class CabanaViewController: UIViewController {
    
    // MARK: - OUTLETS
    @IBOutlet weak var buttonBack: UIButton?
    @IBOutlet weak var labelTitle: UILabel?
    @IBOutlet weak var centerView: UIView?
    @IBOutlet weak var scrollView: UIScrollView?
    @IBOutlet weak var buttonNextPage: UIButton?
    //MARK: - PROPERTIES
    var valueOfStandard: String = ""
    var valueOfCustom: String = ""
    var isClicked = Bool()
    var index = 0
    var totalNumberOfPages = 14
    var valueIs = Bool()
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
        index -= 1
        updateButtons(index)
    }
    @IBAction func buttenNextAction(_ sender: UIButton) {
        index += 1
        updateButtons(index)
        
    }
}
extension CabanaViewController: UIScrollViewDelegate{
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        index = Int((scrollView.contentOffset.x / scrollView.frame.size.width).rounded())
        updateButtons(index)
    }
    func updateButtons(_ index:Int){
        scrollView?.contentOffset.x = self.view.bounds.width*CGFloat(index)
        buttonBack?.isEnabled = index != 0
        buttonNextPage?.isEnabled = index != totalNumberOfPages-1
    }
}

