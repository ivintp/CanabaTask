//
//  WindowShutterViewController.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class WindowShutterViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView?
    var cellModels: [WindowShutterTableViewCellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCellModels()
    }
    func createCellModels(){
        cellModels = []
        cellModels.append(WindowShutterTableViewCellModel(cellType: .windowShutterHead))
        cellModels.append(WindowShutterTableViewCellModel(cellType: .yes))
//        cellModels.append(WindowShutterTableViewCellModel(cellType: .no))
        tableView?.reloadData()
    }
}
extension WindowShutterViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! WindowShutterTableViewCell
        cell.cellModel = data
        return cell
    }
}
