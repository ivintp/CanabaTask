//
//  WarDrobeTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 13/01/25.
//

import UIKit

class WarDrobeTableViewCell: UITableViewCell {

    @IBOutlet weak var warDrobeTitleLabel: UILabel?
    @IBOutlet weak var warDrobeSubTitleLabel: UILabel?
    @IBOutlet weak var warDrobeImage: UIImageView?
    @IBOutlet weak var warDrobeOptionsLabel: UILabel?
    @IBOutlet weak var warDrobeOptionView: UIView?
    @IBOutlet weak var warDrobeSelectedOptionView: UIView?
    
    var cellModels: WarDrobeTableViewCellModel?{
        didSet{
            configurationCell()
            configurationUi()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func configurationUi(){
        warDrobeOptionView?.layer.cornerRadius = 10
        warDrobeSelectedOptionView?.layer.cornerRadius = 10
        warDrobeSelectedOptionView?.layer.borderWidth = 1
        warDrobeSelectedOptionView?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        warDrobeSelectedOptionView?.layer.cornerRadius = 12
        
    }
    func configurationCell(){
        warDrobeTitleLabel?.text = cellModels?.title()
        warDrobeSubTitleLabel?.text = cellModels?.subTitle()
        warDrobeOptionsLabel?.text = cellModels?.warDrobeOption()
        warDrobeImage?.image = cellModels?.warDrobeImage()
    }
}
