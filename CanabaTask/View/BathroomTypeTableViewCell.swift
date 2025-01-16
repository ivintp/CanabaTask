//
//  BathroomTypeTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class BathroomTypeTableViewCell: UITableViewCell {
    // MARK: - OUTLETS
    @IBOutlet weak var labelBathroomSizeTitle: UILabel?
    @IBOutlet weak var labelBathroomSizeSubTitle: UILabel?
    @IBOutlet weak var viewBathroomSelectedStandard: UIView?
    @IBOutlet weak var viewBathroomSelectedCustom: UIView?
    @IBOutlet weak var labelBathroomStandard: UILabel?
    @IBOutlet weak var labelBathroomCustom: UILabel?
    @IBOutlet weak var labelBathroomStandardDetails: UILabel?
    @IBOutlet weak var labelBathroomCustomDetails: UILabel?
    @IBOutlet weak var viewOptionMainStandard: UIView?
    @IBOutlet weak var viewOptionMainCustom: UIView?
    //MARK: - PROPERTIES
    var cellModel: BathroomTypeTableViewCellModel?{
        didSet{
            configureCell()
            configureUi()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    func configureCell(){
        labelBathroomSizeTitle?.text = cellModel?.title()
        labelBathroomSizeSubTitle?.text = cellModel?.SubTitle()
        labelBathroomStandard?.text = "STANDARD"
        labelBathroomCustom?.text = "CUSTOM"
        labelBathroomCustomDetails?.text = "Select One"
        labelBathroomStandardDetails?.text = "Classic"
        
    }
    func  configureUi(){
        viewOptionMainStandard?.layer.cornerRadius = 10
        viewOptionMainCustom?.layer.cornerRadius = 10
        viewBathroomSelectedStandard?.layer.borderWidth = 1
        viewBathroomSelectedStandard?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        viewBathroomSelectedStandard?.layer.cornerRadius = 12
        viewBathroomSelectedCustom?.layer.borderWidth = 1
        viewBathroomSelectedCustom?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        viewBathroomSelectedCustom?.layer.cornerRadius = 12
    }
}
