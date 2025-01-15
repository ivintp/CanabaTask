//
//  CabanaSizeViewController.swift
//  CanabaTask
//
//  Created by AppStation on 09/01/25.
//

import UIKit

class CabanaSizeViewController: UIViewController {
    
    //MARK: - OUTLETS
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: - PROPERTIES
    var cellModel: [CabanaSizeTableViewCellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createCellModel()
     
    }
    //MARK: - MODELS CREATION
    func createCellModel(){
        
        cellModel = []
        cellModel.append(CabanaSizeTableViewCellModel(cellType: .CabanaSizeHead))
        cellModel.append(CabanaSizeTableViewCellModel(cellType: .CabanaSizeLengthBottom))
        cellModel.append(CabanaSizeTableViewCellModel(cellType: .CabanaSizeWidthBottom))
        tableView.reloadData()
    }
  
    
}
//MARK: - EXTENSION OF TABLE VIEW
extension CabanaSizeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cellModel[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! CabanaSizeTableViewCell
        cell.cellModel = data
        return cell
    }
    
    
}
