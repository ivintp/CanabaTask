//
//  BathroomTableViewCell.swift
//  CanabaTask
//
//  Created by Praveen on 11/01/25.
//

import UIKit

class BathroomSizeTableViewCell: UITableViewCell {
    // MARK: - OUTLETS
    @IBOutlet weak var bathroomSizeLabel: UILabel?
    @IBOutlet weak var bathroomSizeDetailsLabel: UILabel?
    @IBOutlet weak var bathromSizeMeasurementHeadingLabel: UILabel?
    @IBOutlet weak var bathroomSizeMeasurementLabel: UILabel?
    @IBOutlet weak var bathroomSizeMeasurementView: UIView?
    @IBOutlet weak var bathroomSizeMeasurementSelectedView: UIView?
    //MARK: - PROPERTIES
    var cellModel: BathroomSizeTableViewCellModel?{
        didSet{
            configureCell()
            configureUi()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    func configureCell(){
        bathroomSizeLabel?.text = cellModel?.heading()
        bathroomSizeDetailsLabel?.text = cellModel?.subTitle()
        bathromSizeMeasurementHeadingLabel?.text = cellModel?.measurementHeading()
        bathroomSizeMeasurementLabel?.text = cellModel?.measurementDetails()
    }
    func configureUi(){
        bathroomSizeMeasurementView?.layer.cornerRadius = 10
        bathroomSizeMeasurementSelectedView?.layer.borderWidth = 1
        bathroomSizeMeasurementSelectedView?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        bathroomSizeMeasurementSelectedView?.layer.cornerRadius = 12
    }
}
