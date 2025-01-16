//
//  RoomFloorTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 13/01/25.
//

import UIKit

class RoomFloorTableViewCell: UITableViewCell {
    // MARK: - OUTLETS
    @IBOutlet weak var cabanaRoomFloorTitleLabel: UILabel?
    @IBOutlet weak var cabanaRoomFloorSubTtitleLabel: UILabel?
    @IBOutlet weak var cabanaRoomFloorOptionsImage: UIImageView?
    @IBOutlet weak var cabanaRoomFloorOptionLabel: UILabel?
    @IBOutlet weak var cabanaRoomFloorOptionsView: UIView?
    @IBOutlet weak var cabanaRoomFloorOptionSelectorView: UIView?
    //MARK: - PROPERTIES
    var cellModel: RoomFloorTableViewCellModel?{
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
        cabanaRoomFloorTitleLabel?.text = cellModel?.title()
        cabanaRoomFloorSubTtitleLabel?.text = cellModel?.subTitle()
        cabanaRoomFloorOptionLabel?.text = cellModel?.floorOptions()
        cabanaRoomFloorOptionsImage?.image = cellModel?.floorOptionImage()
    }
    func configureUi(){
        cabanaRoomFloorOptionsView?.layer.cornerRadius = 10
        cabanaRoomFloorOptionSelectorView?.layer.borderWidth = 1
        cabanaRoomFloorOptionSelectorView?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        cabanaRoomFloorOptionSelectorView?.layer.cornerRadius = 12
    }
}
