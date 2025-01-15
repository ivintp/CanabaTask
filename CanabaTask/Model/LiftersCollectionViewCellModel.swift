//
//  LiftersCollectionViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import Foundation
enum LiftersCollectionViewCellType{
    case liftersOne
    case lifterTwo
}
class LiftersCollectionViewCellModel{
    var identifier = ""
    var cellType: LiftersCollectionViewCellType
    init(cellType: LiftersCollectionViewCellType) {
        
        self.cellType = cellType
        switch cellType {
        case .liftersOne,.lifterTwo:
            self.identifier = "cell.cabana.lifter.bottom"
        }
    }
    func title()-> String{
        switch cellType {
        case .liftersOne:
            return "(X2) LIFTERS"
        case .lifterTwo:
            return "(X4) LIFTERS"
        }
    }
    func SubTitle()-> String{
        switch cellType {
        case .liftersOne:
            return "Only In The Front"
        case .lifterTwo:
            return "To All Sides"
        }
    }
}
