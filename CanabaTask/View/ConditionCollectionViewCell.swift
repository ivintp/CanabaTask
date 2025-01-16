//
//  ConditionCollectionViewCell.swift
//  CanabaTask
//
//  Created by Praveen on 16/01/25.
//

import UIKit

class ConditionCollectionViewCell: UICollectionViewCell {
    // MARK: - OUTLETS
    @IBOutlet weak var viewOption: UIView?
    @IBOutlet weak var labelOptionTitle: UILabel?
    
    //MARK: - PROPERTIES
    var cellModel:ConditionCollectionViewCellModel?{
        didSet{
            configureCell()
            configureUi()
        }
    }
    func  configureCell(){
        labelOptionTitle?.text = cellModel?.title()
    }
    func configureUi(){
        viewOption?.layer.cornerRadius = 10
    }
}
