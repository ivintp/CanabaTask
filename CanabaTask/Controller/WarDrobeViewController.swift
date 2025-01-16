//
//  WarDrobeViewController.swift
//  CanabaTask
//
//  Created by AppStation on 13/01/25.
//

import UIKit

class WarDrobeViewController: UIViewController {
    // MARK: - OUTLETS
    @IBOutlet weak var tableView: UITableView?
    
    //MARK: - PROPERTIES
    var cellModels: [WarDrobeTableViewCellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCellModels()
    }
    func createCellModels(){
        cellModels = []
        cellModels.append(WarDrobeTableViewCellModel(cellType: .warDrobeHead))
        cellModels.append(WarDrobeTableViewCellModel(cellType: .slidingDoor))
        cellModels.append(WarDrobeTableViewCellModel(cellType: .hingeDoor))
        cellModels.append(WarDrobeTableViewCellModel(cellType: .cornerWarDrobe))
        cellModels.append(WarDrobeTableViewCellModel(cellType: .walkInWarDrobe))
        tableView?.reloadData()
        
    }
}
extension WarDrobeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! WarDrobeTableViewCell
        cell.cellModels = data
        return cell
    }
    
    
}
