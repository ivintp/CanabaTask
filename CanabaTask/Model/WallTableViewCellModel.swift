//
//  WallTableViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 14/01/25.
//

import Foundation
import UIKit

enum WallTableViewCellType{
    case wallHead
    case wallpaper
    case paint
    case nothing
}
class WallTableViewCellModel{
    var identifier = ""
    var cellType: WallTableViewCellType
    init(cellType: WallTableViewCellType) {
     
        self.cellType = cellType
        switch cellType {
        case .wallHead:
            self.identifier = "cell.cabana.wall.head"
        case .wallpaper,.paint,.nothing:
            self.identifier = "cell.cabana.wall.bottom"
        }
    }
    func title()-> String{
        switch cellType {
        case .wallHead:
            return "THE WALL"
        default:
            return ""
        }
    }
    func subTitle()->String{
        switch cellType {
        case .wallHead:
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        default:
            return ""
       
        }
    }
    func wallOption()-> String{
        switch cellType {
        case .wallpaper:
            return "WALLPAPER"
        case .paint:
            return "PAINT"
        case .nothing:
            return "NOTHING"
        default:
            return ""
        }
    }
    func wallPaperImage()-> UIImage{
        switch cellType {
        case .wallpaper:
            return UIImage(named: "wallPaper") ?? UIImage()
        case .paint:
            return UIImage(named: "paint") ?? UIImage()
        case .nothing:
            return UIImage(named: "Exclusion") ?? UIImage()
        default:
            return UIImage()
        }
    }
}
