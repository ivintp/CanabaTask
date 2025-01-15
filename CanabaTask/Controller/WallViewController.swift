//
//  WallViewController.swift
//  CanabaTask
//
//  Created by AppStation on 14/01/25.
//

import UIKit

class WallViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView?
    
    
    var cellModels: [WallTableViewCellModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCellModels()
    }
    func createCellModels(){
        cellModels = []
        cellModels.append(WallTableViewCellModel(cellType: .wallHead))
        cellModels.append(WallTableViewCellModel(cellType: .wallpaper))
        cellModels.append(WallTableViewCellModel(cellType: .paint))
        cellModels.append(WallTableViewCellModel(cellType: .nothing))
        tableView?.reloadData()
    }
}
extension WallViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! WallTableViewCell
        cell.cellModel = data
        return cell
    }
    
    
}
