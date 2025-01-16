//
//  BathroomTypeTableViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import Foundation

enum BathroomTypeTableViewCellType{
    case bathroomHead
    case stadard
    case custom
}
class BathroomTypeTableViewCellModel{
    var identifier = ""
    var cellType: BathroomTypeTableViewCellType
    init(cellType: BathroomTypeTableViewCellType) {
        
        self.cellType = cellType
        switch cellType {
        case .bathroomHead:
            self.identifier = "cell.cabana.bathroomtype.head"
        case .stadard,.custom:
            self.identifier = "cell.cabana.bathroomtype.bottom"
     
        }
    }
    func title()-> String{
        switch cellType {
        case .bathroomHead:
            return "BATHROOM TYPE"
        default:
            return ""
        }
    }
    func SubTitle()-> String{
        switch cellType {
        case .bathroomHead:
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        default:
            return ""
        }
    }
    func bathroomTypes()-> String{
        switch cellType {
        case .stadard:
            return "STANDARD"
        case .custom:
            return "CUSTOM"
        default:
            return ""
        }
    }
    func bathroomTypesDetails()-> String{
        switch cellType {
        case .stadard:
            return "Classic"
        case .custom:
            return "Select One"
        default:
            return ""
        }
    }
}
