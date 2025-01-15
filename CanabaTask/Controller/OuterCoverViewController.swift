//
//  OuterCoverViewController.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class OuterCoverViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView?
    var cellModels: [OuterCoverTableViewCellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCellModels()

    }
    func createCellModels(){
        cellModels = []
        cellModels.append(OuterCoverTableViewCellModel(cellType: .outerCoverHead))
        cellModels.append(OuterCoverTableViewCellModel(cellType: .galvanisedIron))
        cellModels.append(OuterCoverTableViewCellModel(cellType: .fiper))
        tableView?.reloadData()
    }
}
extension OuterCoverViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! OuterCoverTableViewCell
        cell.cellModel = data
        return cell
    }
}
