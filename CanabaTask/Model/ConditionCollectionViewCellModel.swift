//
//  ConditionCollectionViewCellModel.swift
//  CanabaTask
//
//  Created by Praveen on 16/01/25.
//

import Foundation
enum ConditionCollectionViewCellType{
    case oneTon
    case twoTon
    case threeTon
    case fourTon
    case fiveTon
    case sixTon
    case without
}
class ConditionCollectionViewCellModel{
    var identifier = ""
    var cellType: ConditionCollectionViewCellType
    init(cellType: ConditionCollectionViewCellType) {
        
        self.cellType = cellType
        switch cellType {
            
        case .oneTon,.twoTon,.threeTon,.fourTon,.fiveTon,.sixTon,.without:
            self.identifier = "cell.cabana.condition.bottom"
       
        }
    }
    func title()-> String{
        switch cellType {
       
        case .oneTon:
            return "(1)TON"
        case .twoTon:
            return "(1)TON"
        case .threeTon:
            return "(2)TON"
        case .fourTon:
            return "(1)TON X 2"
        case .fiveTon:
            return "(2,5)TON"
        case .sixTon:
            return "(2)TON X 2"
        case .without:
            return "WITHOUT"
        }
    }
}
