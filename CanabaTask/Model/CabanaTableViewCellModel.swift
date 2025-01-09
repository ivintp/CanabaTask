//
//  CabanaSizeTableViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 09/01/25.
//

import Foundation

enum CabanaTableViewCellType{
    case CabanaSizeHead
    case CabanaSizeBottom
    case CabanaBathroomBottom
    case RoomFloorBottom
    
}
class CabanaTableViewCellModel{
    
    var identifier: String = ""
    var cellType: CabanaTableViewCellType
    
    init(cellType: CabanaTableViewCellType) {
       
        self.cellType = cellType
        switch cellType {
        case .CabanaSizeHead:
            self.identifier = "cell.cabana.size.head"
        case .CabanaSizeBottom:
            self.identifier = "cell.cabana.size.head"
        case .CabanaBathroomBottom:
            self.identifier = "cell.cabana.bathroom.Bottom"
        case .RoomFloorBottom:
            self.identifier = "cell.cabana.roomfloor.bottom"
        }
    }
    func header()-> String{
        if cellType == .CabanaSizeHead{
            return "CABANA SIZE"
        }
        
    }
    func subTitle()-> String{
        if cellType == .CabanaSizeHead{
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        }
    }
}
