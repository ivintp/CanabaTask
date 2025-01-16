//
//  LiftersTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class LiftersTableViewCell: UITableViewCell {
    // MARK: - OUTLETS
    @IBOutlet weak var labelLifterTitle: UILabel?
    @IBOutlet weak var labelLifterSubTitle: UILabel?
    
    
    //MARK: - PROPERTIES
    var cellModel: LiftersTableViewCellModel?{
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
        labelLifterTitle?.text = cellModel?.title()
    }
    func  configureUi(){
        
    }
}
