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
    var cellModel: [CabanaTableViewCellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    func createCellModel(){
        
        cellModel = []
        cellModel.append(CabanaTableViewCellModel(cellType: .CabanaSizeHead))
        cellModel.append(CabanaTableViewCellModel(cellType: .CabanaSizeBottom))
        tableView.reloadData()
    }


}
extension CabanaSizeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
