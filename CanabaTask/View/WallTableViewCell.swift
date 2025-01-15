//
//  WallTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 14/01/25.
//

import UIKit

class WallTableViewCell: UITableViewCell {

    @IBOutlet weak var wallPaperTitileLabel: UILabel?
    @IBOutlet weak var wallPaperSubtitileLabel: UILabel?
    @IBOutlet weak var wallPaperoptionLabel: UILabel?
    @IBOutlet weak var wallPaperImage: UIImageView?
    @IBOutlet weak var wallPaperView: UIView?
    @IBOutlet weak var wallPaperOptionView: UIView?
    
    var cellModel: WallTableViewCellModel?{
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
        wallPaperView?.layer.cornerRadius = 10
        wallPaperOptionView?.layer.cornerRadius = 10
        wallPaperOptionView?.layer.borderWidth = 1
        wallPaperOptionView?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        wallPaperOptionView?.layer.cornerRadius = 12
    }
    func configureCell(){
        wallPaperTitileLabel?.text = cellModel?.title()
        wallPaperSubtitileLabel?.text = cellModel?.subTitle()
        wallPaperoptionLabel?.text = cellModel?.wallOption()
        wallPaperImage?.image = cellModel?.wallPaperImage()
    }
}
