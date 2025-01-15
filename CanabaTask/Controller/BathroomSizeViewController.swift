//
//  BathroomSizeViewController.swift
//  CanabaTask
//
//  Created by AppStation on 09/01/25.
//

import UIKit

class BathroomSizeViewController: UIViewController {
    //  MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - PROPERTIES
    var cellModels: [BathroomSizeTableViewCellModel]  = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCellModel()
        
    }
    //MARK: - MODELS CREATION
    func createCellModel(){
        cellModels = []
        cellModels.append(BathroomSizeTableViewCellModel(cellType: .bathroomSizeHead))
        cellModels.append(BathroomSizeTableViewCellModel(cellType: .standard))
        cellModels.append(BathroomSizeTableViewCellModel(cellType: .medium))
        cellModels.append(BathroomSizeTableViewCellModel(cellType: .large))
        tableView.reloadData()
    }
   

}
extension BathroomSizeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier:data.identifier, for: indexPath)as! BathroomSizeTableViewCell
        cell.cellModel = data
        return cell
    }
    
    
}
