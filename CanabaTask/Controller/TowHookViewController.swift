//
//  TowHookViewController.swift
//  CanabaTask
//
//  Created by Praveen on 15/01/25.
//

import UIKit

class TowHookViewController: UIViewController {
    // MARK: - OUTLETS
    @IBOutlet weak var tableView: UITableView?
    
    
    //MARK: - PROPERTIES
    var cellModels: [TowHookTableViewCellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCellModels()
    }
    func createCellModels(){
        cellModels = []
        cellModels.append(TowHookTableViewCellModel(cellType: .towHookHead))
        cellModels.append(TowHookTableViewCellModel(cellType: .yes))
        tableView?.reloadData()
    }
}
extension TowHookViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! TowHookTableViewCell
        cell.cellModel = data
        return cell
    }
    
    
}
