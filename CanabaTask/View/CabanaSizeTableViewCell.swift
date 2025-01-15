//
//  CabanaSizeTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 09/01/25.
//

import UIKit

class CabanaSizeTableViewCell: UITableViewCell {

    //MARK: - OUTLETS
    @IBOutlet weak var cabanaHeadingLabel: UILabel?
    @IBOutlet weak var cabanaDetailsLabel: UILabel?
    @IBOutlet weak var cabanaSizeMeasurementLabel: UILabel?
    @IBOutlet weak var cabanaSizeMeasurementTextField: UITextField?
    @IBOutlet weak var cabanaRoomFloorSelectedView: UIView?
    
    
    var cellModel: CabanaSizeTableViewCellModel?{
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
    //MARK: - CONFIGURATION OF CELL
    func configureCell(){
        cabanaHeadingLabel?.text = cellModel?.header()
        cabanaDetailsLabel?.text = cellModel?.subTitle()
        cabanaSizeMeasurementLabel?.text = cellModel?.sizeDetails()
    }
    //MARK: - CONFIGURATION OF UI
    func configureUi(){
        cabanaRoomFloorSelectedView?.layer.cornerRadius = 10
    }
    
}
