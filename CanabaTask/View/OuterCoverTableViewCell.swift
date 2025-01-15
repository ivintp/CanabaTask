//
//  OuterCoverTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class OuterCoverTableViewCell: UITableViewCell {

    @IBOutlet weak var outerCoverTitle: UILabel?
    @IBOutlet weak var outerCoverSubTitle: UILabel?
    @IBOutlet weak var labelOuterCoverOption: UILabel?
    @IBOutlet weak var ImageOuterCoverOption: UIImageView?
    @IBOutlet weak var viewOuterCoverOption: UIView?
    @IBOutlet weak var viewOuterCoverSelectedOption: UIView?
    
    var cellModel: OuterCoverTableViewCellModel?{
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
        outerCoverTitle?.text = cellModel?.title()
        outerCoverSubTitle?.text = cellModel?.subTitle()
        labelOuterCoverOption?.text = cellModel?.outerCoverOption()
        ImageOuterCoverOption?.image = cellModel?.outerCoverOptionImage()
    }
    func configureUi(){
        viewOuterCoverOption?.layer.cornerRadius = 10
        viewOuterCoverSelectedOption?.layer.cornerRadius = 10
        viewOuterCoverSelectedOption?.layer.borderWidth = 1
        viewOuterCoverSelectedOption?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        viewOuterCoverSelectedOption?.layer.cornerRadius = 12
    }
}
