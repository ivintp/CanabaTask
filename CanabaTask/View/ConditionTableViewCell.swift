//
//  ConditionTableViewCell.swift
//  CanabaTask
//
//  Created by Praveen on 16/01/25.
//

import UIKit

class ConditionTableViewCell: UITableViewCell {
    // MARK: - OUTLETS
    @IBOutlet weak var labelConditionTitle: UILabel?
    @IBOutlet weak var labelConditionSubTitle: UILabel?
    
    
    //MARK: - PROPERTIES
    var cellModel: ConditionTableViewCellModel?{
        didSet{
            configureCell()
//            configureUi()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    func  configureCell(){
        labelConditionTitle?.text = cellModel?.title()
        labelConditionSubTitle?.text = cellModel?.SubTitle()
    }
//    func configureUi(){
//        
//    }
}
