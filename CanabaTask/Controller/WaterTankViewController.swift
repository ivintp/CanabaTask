//
//  WaterTankViewController.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class WaterTankViewController: UIViewController {
    // MARK: - OUTLETS
    @IBOutlet weak var tableView: UITableView?
    
    
    //MARK: - PROPERTIES
    var cellModels: [WaterTankTableViewCellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCellModels()
        
    }
    func createCellModels(){
        cellModels = []
        cellModels.append(WaterTankTableViewCellModel(cellType: .waterTankHead))
        cellModels.append(WaterTankTableViewCellModel(cellType: .small))
        cellModels.append(WaterTankTableViewCellModel(cellType: .medium))
        cellModels.append(WaterTankTableViewCellModel(cellType: .large))
        cellModels.append(WaterTankTableViewCellModel(cellType: .ultraLarge))
        tableView?.reloadData()
    }
}
extension WaterTankViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! WaterTankTableViewCell
        cell.cellModel = data
        return cell
    }
}
