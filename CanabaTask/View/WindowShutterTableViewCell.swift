//
//  WindowShutterTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class WindowShutterTableViewCell: UITableViewCell {
    // MARK: - OUTLETS
    @IBOutlet weak var labelWindowShutterTitle: UILabel?
    @IBOutlet weak var labelWindowShutterSubTitle: UILabel?
    @IBOutlet weak var viewWindowShutterSelectionYes: UIView?
    @IBOutlet weak var viewWindowShutterSelectionNo: UIView?
    @IBOutlet weak var labelWindowShutterChoosedNo: UILabel?
    @IBOutlet weak var labelWindowShutterChoosedYes: UILabel?
    @IBOutlet weak var labelWindowShutterChoosedDetailsYes: UILabel?
    @IBOutlet weak var labelWindowShutterChoosedDetailsNo: UILabel?
    @IBOutlet weak var viewSelectedYes: UIView?
    @IBOutlet weak var viewSelectedNo: UIView?
    //MARK: - PROPERTIES
    var cellModel: WindowShutterTableViewCellModel?{
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
    func configureUi(){
        viewWindowShutterSelectionYes?.layer.cornerRadius = 10
        viewWindowShutterSelectionNo?.layer.cornerRadius = 10
//        viewWindowShutterSelectionYes?.layer.borderWidth = 1
//        viewWindowShutterSelectionYes?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
//        viewWindowShutterSelectionYes?.layer.cornerRadius = 12
//        viewWindowShutterSelectionNo?.layer.borderWidth = 1
//        viewWindowShutterSelectionNo?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
//        viewWindowShutterSelectionNo?.layer.cornerRadius = 12
        viewSelectedYes?.layer.borderWidth = 1
        viewSelectedYes?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        viewSelectedYes?.layer.cornerRadius = 12
        viewSelectedNo?.layer.borderWidth = 1
        viewSelectedNo?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        viewSelectedNo?.layer.cornerRadius = 12
        
    }
    func configureCell(){
        labelWindowShutterTitle?.text = cellModel?.title()
        labelWindowShutterSubTitle?.text = cellModel?.subTitle()
        labelWindowShutterChoosedYes?.text = "YES"
        labelWindowShutterChoosedNo?.text = "NO"
        labelWindowShutterChoosedDetailsYes?.text = "With Shutters"
        labelWindowShutterChoosedDetailsNo?.text = "Without Shutters"
    }
}
