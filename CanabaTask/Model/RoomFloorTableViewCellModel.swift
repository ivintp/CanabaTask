//
//  RoomFloorTableViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 13/01/25.
//

import Foundation
import UIKit

enum RoomFloorTableViewCellType{
    case roomFloorHead
    case parquet
    case carpets
    case marbleAlternative
    case nothing
}
class RoomFloorTableViewCellModel{
    var identifier = ""
    var cellType: RoomFloorTableViewCellType
   
    init(cellType: RoomFloorTableViewCellType) {
        self.cellType = cellType
        switch cellType {
        case .roomFloorHead:
            self.identifier = "cell.cabana.roomfloor.head"
        case .parquet,.carpets,.marbleAlternative,.nothing:
            self.identifier = "cell.cabana.roomfloor.bottom"
        
        }
    }
    func title()->String{
        switch cellType {
        case .roomFloorHead:
            return "ROOM FLOOR"
        default:
            return ""
        }
    }
    func subTitle()-> String{
        switch cellType {
        case .roomFloorHead:
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        default:
            return ""
        }
    }
    func floorOptions()-> String{
        switch cellType {
        case .parquet:
            return "PARQUET"
        case .carpets:
            return "CARPETS"
        case .marbleAlternative:
            return "MARBLE ALTERNATIVE"
        case .nothing:
            return "NOTHING"
        default:
            return ""
        }
    }
    func floorOptionImage()->UIImage{
        switch cellType {
        case .parquet:
            return UIImage(named: "parquet") ?? UIImage()
        case .carpets:
            return UIImage(named: "carpet") ?? UIImage()
        case .marbleAlternative:
            return UIImage(named: "tile") ?? UIImage()
        case .nothing:
            return UIImage(named: "Exclusion ") ?? UIImage()
        default:
            return UIImage()
        }
    }
}
