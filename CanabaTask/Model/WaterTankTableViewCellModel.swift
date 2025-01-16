//
//  WaterTankTableViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import Foundation

enum WaterTankTableViewCellType{
    case waterTankHead
    case small
    case medium
    case large
    case ultraLarge
}
class WaterTankTableViewCellModel{
    var identifier = ""
    var cellType: WaterTankTableViewCellType
    init(cellType: WaterTankTableViewCellType) {
     
        self.cellType = cellType
        switch cellType {
        case .waterTankHead:
            self.identifier = "cell.cabana.watertank.head"
        case .small,.medium,.large,.ultraLarge:
            self.identifier = "cell.cabana.watertank.bottom"
        }
    }
    func title()-> String{
        switch cellType {
        case .waterTankHead:
            return "WATER TANK"
        default:
            return ""
        }
    }
    func subTitle()->String{
        switch cellType {
        case .waterTankHead:
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        default:
            return ""
       
        }
    }
    func waterTankCapacity()->String{
        switch cellType {
        case .small:
            return "500 LITER"
        case .medium:
            return "1000 LITER"
        case .large:
            return "1500 LITER"
        case .ultraLarge:
            return "2000 LITER"
        default:
            return ""
        }
    }
}
