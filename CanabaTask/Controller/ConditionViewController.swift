//
//  ConditionViewController.swift
//  CanabaTask
//
//  Created by Praveen on 16/01/25.
//

import UIKit

class ConditionViewController: UIViewController {
    // MARK: - OUTLETS
    @IBOutlet weak var tableView: UITableView?
    @IBOutlet weak var collectionView: UICollectionView?
    
    //MARK: - PROPERTIES
    var tableViewCellModels: [ConditionTableViewCellModel] = []
    var collectionViewCellModels: [ConditionCollectionViewCellModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        createTableViewCellModels()
        createCollectionViewCellModels()
        
    }
    func createTableViewCellModels(){
        tableViewCellModels = []
        tableViewCellModels.append(ConditionTableViewCellModel(cellType: .conditionHead))
        tableView?.reloadData()
    }
    func createCollectionViewCellModels(){
        collectionViewCellModels = []
        collectionViewCellModels.append(ConditionCollectionViewCellModel(cellType: .oneTon))
        collectionViewCellModels.append(ConditionCollectionViewCellModel(cellType: .twoTon))
        collectionViewCellModels.append(ConditionCollectionViewCellModel(cellType: .threeTon))
        collectionViewCellModels.append(ConditionCollectionViewCellModel(cellType: .fourTon))
        collectionViewCellModels.append(ConditionCollectionViewCellModel(cellType: .fiveTon))
        collectionViewCellModels.append(ConditionCollectionViewCellModel(cellType: .sixTon))
        collectionViewCellModels.append(ConditionCollectionViewCellModel(cellType: .without))
        collectionView?.reloadData()
    }
}
extension ConditionViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableViewCellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = tableViewCellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! ConditionTableViewCell
        cell.cellModel = data
        return cell
    }
}
extension ConditionViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionViewCellModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data = collectionViewCellModels[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: data.identifier, for: indexPath)as! ConditionCollectionViewCell
        cell.cellModel = data
        return cell
    }
    
    
}
