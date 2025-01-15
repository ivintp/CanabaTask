//
//  WaterTankTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class WaterTankTableViewCell: UITableViewCell {

    @IBOutlet weak var labelWaterTankTitle: UILabel?
    @IBOutlet weak var labelWaterTankSubTitle: UILabel?
    @IBOutlet weak var labelWaterTankOptionTitle: UILabel?
    @IBOutlet weak var viewWaterTankSelectedOption: UIView?
    @IBOutlet weak var viewWaterTankOptions: UIView?
    
    var cellModel: WaterTankTableViewCellModel?{
        didSet{
            configureCell()
            configureUi()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureCell(){
        labelWaterTankTitle?.text = cellModel?.title()
        labelWaterTankSubTitle?.text = cellModel?.subTitle()
        labelWaterTankOptionTitle?.text = cellModel?.waterTankCapacity()
    }
    func configureUi(){
        viewWaterTankOptions?.layer.cornerRadius = 10
        viewWaterTankSelectedOption?.layer.cornerRadius = 10
        viewWaterTankSelectedOption?.layer.borderWidth = 1
        viewWaterTankSelectedOption?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        viewWaterTankSelectedOption?.layer.cornerRadius = 12
    }
}
