//
//  WindowShutterTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class WindowShutterTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelWindowShutterTitle: UILabel?
    @IBOutlet weak var labelWindowShutterSubTitle: UILabel?
    @IBOutlet weak var viewWindowShutterSelectionYes: UIView?
    @IBOutlet weak var viewWindowShutterSelectionNo: UIView?
    @IBOutlet weak var labelWindowShutterChoosedNo: UILabel?
    @IBOutlet weak var labelWindowShutterChoosedYes: UILabel?
    @IBOutlet weak var labelWindowShutterChoosedDetailsYes: UILabel?
    @IBOutlet weak var labelWindowShutterChoosedDetailsNo: UILabel?
    @IBOutlet weak var viewWindowShutterSelected: UIView?
    
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
