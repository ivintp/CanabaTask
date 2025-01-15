//
//  RoomFloorViewController.swift
//  CanabaTask
//
//  Created by AppStation on 09/01/25.
//

import UIKit

class RoomFloorViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!

    
    var cellModels: [RoomFloorTableViewCellModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        createCellModel()
    }
    func createCellModel(){
        cellModels = []
        cellModels.append(RoomFloorTableViewCellModel(cellType: .roomFloorHead))
        cellModels.append(RoomFloorTableViewCellModel(cellType: .parquet))
        cellModels.append(RoomFloorTableViewCellModel(cellType: .carpets))
        cellModels.append(RoomFloorTableViewCellModel(cellType: .marbleAlternative))
        cellModels.append(RoomFloorTableViewCellModel(cellType: .nothing))
        tableView.reloadData()
    }
   
}
extension RoomFloorViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! RoomFloorTableViewCell
        cell.cellModel = data
        return cell
    }
    
    
}
