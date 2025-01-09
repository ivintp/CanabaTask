//
//  CabanaSizeTableViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 09/01/25.
//

import UIKit

class CabanaTableViewCell: UITableViewCell {

    //MARK: - OUTLETS
    @IBOutlet weak var cabanaHeadingLabel: UILabel!
    @IBOutlet weak var cabanaDetailsLabel: UILabel!
    @IBOutlet weak var cabanaSizeMeasurementLabel: UILabel!
    @IBOutlet weak var cabanaSizeMeasurementTextField: UITextField!
    @IBOutlet weak var cabanaBathroomBottomLabel: UILabel!
    @IBOutlet weak var cabanaBathroomBottomMeasurementLabel: UILabel!
    @IBOutlet weak var cabanaBathroomSelectedView: UIView!
    @IBOutlet weak var cabanaRoomFloorParaquetImage: UIImageView!
    @IBOutlet weak var cabanaRoomFloorParaquetLabel: UILabel!
    @IBOutlet weak var cabanaRoomFloorCarpetImage: UIImageView!
    @IBOutlet weak var cabanaRoomFloorCarpetLabel: UILabel!
    @IBOutlet weak var cabanaRoomFloorSelectedView: UIView!
    
    
    var cellModel: CabanaTableViewCellModel?{
        didSet{
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func configureCell(){
        
    }
    
}
