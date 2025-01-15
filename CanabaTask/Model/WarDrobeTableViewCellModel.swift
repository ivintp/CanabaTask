//
//  WarDrobeTableViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 13/01/25.
//

import Foundation
import UIKit

enum WarDrobeTableViewCellType{
    case warDrobeHead
    case slidingDoor
    case hingeDoor
    case cornerWarDrobe
    case walkInWarDrobe
}

class WarDrobeTableViewCellModel{
    var identifier = ""
    var cellType: WarDrobeTableViewCellType
    
    init(cellType: WarDrobeTableViewCellType) {
        self.cellType = cellType
        switch cellType {
        case .warDrobeHead:
            self.identifier = "cell.cabana.wardrobe.head"
        case .slidingDoor,.hingeDoor,.cornerWarDrobe,.walkInWarDrobe:
            self.identifier = "cell.cabana.wardrobe.bottom"
        }
    }
    func title()-> String{
        switch cellType {
        case .warDrobeHead:
            return "WARDROBE"
        default:
            return ""
        }
    }
    func subTitle()-> String{
        switch cellType {
        case .warDrobeHead:
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        default:
            return ""
        }
    }
    func warDrobeOption()-> String{
        switch cellType {
        case .slidingDoor:
            return "SLIDING DOOR"
        case .hingeDoor:
            return "HINGEDOOR"
        case .cornerWarDrobe:
            return "CORNER WARDROBE"
        case .walkInWarDrobe:
            return "WALK-IN-WARDROBE"
        default:
            return ""
        }
    }
    func warDrobeImage()-> UIImage{
        switch cellType {
        case .slidingDoor:
            return UIImage(named: "SlindingDoor") ?? UIImage()
        case .hingeDoor:
            return UIImage(named: "hingeDoor") ?? UIImage()
        case .cornerWarDrobe:
            return UIImage(named: "cornerwardrobe") ?? UIImage()
        case .walkInWarDrobe:
            return UIImage(named: "walkinwardrobe") ?? UIImage()
        default:
            return UIImage()
        }
    }
}
