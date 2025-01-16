//
//  BathroomTypeViewController.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class BathroomTypeViewController: UIViewController {
    // MARK: - OUTLETS
    @IBOutlet weak var tableView: UITableView?
    
    
    //MARK: - PROPERTIES
    var cellModels: [BathroomTypeTableViewCellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createCellModel()
    }
    func createCellModel(){
        cellModels = []
        cellModels.append(BathroomTypeTableViewCellModel(cellType: .bathroomHead))
        cellModels.append(BathroomTypeTableViewCellModel(cellType: .stadard))
        tableView?.reloadData()
    }
}
extension BathroomTypeViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! BathroomTypeTableViewCell
        cell.cellModel = data
        return cell
    }
    
    
}
