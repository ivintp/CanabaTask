//
//  LiftersViewController.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import UIKit

class LiftersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView?
    @IBOutlet weak var collectionView: UICollectionView?
    
    var tableViewCellModels: [LiftersTableViewCellModel] = []
    var collectionViewCellMOdel: [LiftersCollectionViewCellModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        createTableViewCellModels()
        createCollectionViewCellModels()
    }
    func createTableViewCellModels(){
        tableViewCellModels = []
        tableViewCellModels.append(LiftersTableViewCellModel(cellType: .liftersHead))
        tableView?.reloadData()
    }
    func createCollectionViewCellModels(){
        collectionViewCellMOdel = []
        collectionViewCellMOdel.append(LiftersCollectionViewCellModel(cellType: .liftersOne))
        collectionViewCellMOdel.append(LiftersCollectionViewCellModel(cellType: .lifterTwo))
        collectionView?.reloadData()
    }
}
extension LiftersViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableViewCellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = tableViewCellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)as! LiftersTableViewCell
        cell.cellModel = data
        return cell
    }
}
extension LiftersViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionViewCellMOdel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data = collectionViewCellMOdel[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: data.identifier, for: indexPath)as! LiftersCollectionViewCell
        cell.cellModel = data
        return cell
    }
    
    
    
}
