//
//  LiftersCollectionViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class LiftersCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var viewLifterOptionSelected: UIView?
    @IBOutlet weak var viewLifterSelectedOption: UIView?
    @IBOutlet weak var labelSelectionOptions: UILabel?
    @IBOutlet weak var labelLifterSelectionDetailsOption: UILabel?
    
    var cellModel: LiftersCollectionViewCellModel?{
        didSet{
            configureCell()
            configureUi()
        }
    }
    func  configureCell(){
        labelSelectionOptions?.text = cellModel?.title()
        labelLifterSelectionDetailsOption?.text = cellModel?.SubTitle()
    }
    func  configureUi(){
        
    }
}
