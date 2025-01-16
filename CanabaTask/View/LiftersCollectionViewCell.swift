//
//  LiftersCollectionViewCell.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class LiftersCollectionViewCell: UICollectionViewCell {
    // MARK: - OUTLETS
    @IBOutlet weak var viewLifterOptionSelected: UIView?
    @IBOutlet weak var viewLifterSelectedMainOption: UIView?
    @IBOutlet weak var labelSelectionOptions: UILabel?
    @IBOutlet weak var labelLifterSelectionDetailsOption: UILabel?
    //MARK: - PROPERTIES
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
        viewLifterSelectedMainOption?.layer.cornerRadius = 10
        viewLifterOptionSelected?.layer.borderWidth = 1
        viewLifterOptionSelected?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        viewLifterOptionSelected?.layer.cornerRadius = 12
    }
}
