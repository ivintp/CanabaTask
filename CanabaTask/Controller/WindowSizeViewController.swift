//
//  WindowSizeViewController.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class WindowSizeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView?
    var cellModels: [WindowSizeTableViewCellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCellModel()
       
    }
    func createCellModel(){
        cellModels = []
        cellModels.append(WindowSizeTableViewCellModel(cellType: .windowHead))
        cellModels.append(WindowSizeTableViewCellModel(cellType: .standard))
        cellModels.append(WindowSizeTableViewCellModel(cellType: .medium))
        cellModels.append(WindowSizeTableViewCellModel(cellType: .large))
        tableView?.reloadData()
    }
    
}
extension WindowSizeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! WindowSizeTableViewCell
        cell.cellModel = data
        return cell
    }
    
    
}
