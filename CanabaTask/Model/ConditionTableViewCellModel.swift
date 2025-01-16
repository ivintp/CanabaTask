//
//  ConditionTableViewCellModel.swift
//  CanabaTask
//
//  Created by Praveen on 16/01/25.
//

import Foundation
enum ConditionTableViewCellType{
    case conditionHead
}
class ConditionTableViewCellModel{
    var identifier = ""
    var cellType: ConditionTableViewCellType
    init(cellType: ConditionTableViewCellType) {
        
        self.cellType = cellType
        switch cellType {
        case .conditionHead:
            self.identifier = "cell.cabana.condition.head"
        
        }
    }
    func title()-> String{
        switch cellType {
        case .conditionHead:
            return "CONDITION"
        }
    }
    func SubTitle()-> String{
        switch cellType {
        case .conditionHead:
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        }
    }
}
