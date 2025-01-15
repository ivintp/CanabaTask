//
//  LiftersTableViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import Foundation
enum LiftersTableViewCellType{
    case liftersHead
}
class LiftersTableViewCellModel{
    var identifier = ""
    var cellType: LiftersTableViewCellType
    init(cellType: LiftersTableViewCellType) {
        
        self.cellType = cellType
        switch cellType {
        case .liftersHead:
            self.identifier = "cell.cabana.lifter.head"
        
        }
    }
    func title()-> String{
        switch cellType {
        case .liftersHead:
            return "LIFTERS"
        }
    }
    func SubTitle()-> String{
        switch cellType {
        case .liftersHead:
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        }
    }
}
