//
//  WindowSizeTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class WindowSizeTableViewCell: UITableViewCell {

    @IBOutlet weak var labelWindowSizeTitle: UILabel?
    @IBOutlet weak var labelWindowSizeSubTitle: UILabel?
    @IBOutlet weak var labelMeasurementTitle: UILabel?
    @IBOutlet weak var labelMeasurementDetails: UILabel?
    @IBOutlet weak var viewOptions: UIView?
    @IBOutlet weak var viewSelectedOptions: UIView?
    var cellModel: WindowSizeTableViewCellModel?{
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
    func configureUi(){
        viewOptions?.layer.cornerRadius = 10
        viewSelectedOptions?.layer.borderWidth = 1
        viewSelectedOptions?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        viewSelectedOptions?.layer.cornerRadius = 12
    }
    func configureCell(){
        labelWindowSizeTitle?.text = cellModel?.title()
        labelWindowSizeSubTitle?.text = cellModel?.subTitle()
        labelMeasurementTitle?.text = cellModel?.windowMeasurementTitle()
        labelMeasurementDetails?.text = cellModel?.windowMeasurementDetails()
    }
}
