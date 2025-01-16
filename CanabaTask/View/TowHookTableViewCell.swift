//
//  TowHookTableViewCell.swift
//  CanabaTask
//
//  Created by Praveen on 15/01/25.
//

import UIKit

class TowHookTableViewCell: UITableViewCell {
    // MARK: - OUTLETS
    @IBOutlet weak var labelTowHookTitle: UILabel?
    @IBOutlet weak var labelTowHookSubTitle: UILabel?
    @IBOutlet weak var LabelOptionYes: UILabel?
    @IBOutlet weak var labelOptionNo: UILabel?
    @IBOutlet weak var labelOptionDetailsYes: UILabel?
    @IBOutlet weak var labelOptionDetailsNo: UILabel?
    @IBOutlet weak var viewOptionSelectionYes: UIView?
    @IBOutlet weak var viewOptionSelectionNo: UIView?
    @IBOutlet weak var viewOptionMainYes: UIView?
    @IBOutlet weak var viewOptionMainNo: UIView?
    //MARK: - PROPERTIES
    var cellModel: TowHookTableViewCellModel?{
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
    func  configureCell(){
        labelTowHookTitle?.text = cellModel?.title()
        labelTowHookSubTitle?.text = cellModel?.SubTitle()
        LabelOptionYes?.text = "YES"
        labelOptionNo?.text = "NO"
        labelOptionDetailsYes?.text = "With Hook"
        labelOptionDetailsNo?.text = "Without Hook"
    }
    func configureUi(){
        viewOptionMainYes?.layer.cornerRadius = 10
        viewOptionMainNo?.layer.cornerRadius = 10
        viewOptionSelectionYes?.layer.borderWidth = 1
        viewOptionSelectionYes?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        viewOptionSelectionYes?.layer.cornerRadius = 12
        viewOptionSelectionNo?.layer.cornerRadius = 10
        viewOptionSelectionNo?.layer.borderWidth = 1
        viewOptionSelectionNo?.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
        viewOptionSelectionNo?.layer.cornerRadius = 12
    }
}
