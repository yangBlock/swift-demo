//
//  ZYClassificationVC.swift
//  SwiftTest
//
//  Created by 品创 on 2019/3/6.
//  Copyright © 2019 XZY. All rights reserved.
//

import UIKit

class ZYClassificationVC: ZYBaseVC,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    let allArray = ["食品生鲜","个户清洁","美妆洗护","玩具乐器","服装配饰","家用电器","酒水饮料","家居厨具","食品生鲜","个户清洁","美妆洗护","玩具乐器","服装配饰","家用电器","酒水饮料","家居厨具"]

    var _selectIndexPath = NSIndexPath()
    var _selectIndex = 0
    var _isScrollDown = true
    var collectionView : UICollectionView?
    var tableView : UITableView?
    let layout = UICollectionViewFlowLayout()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        self.navigationItem.title = "分类"
        self.navigationItem.leftBarButtonItem = nil
        self.navigationItem.rightBarButtonItem = nil
        
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 95, height: kScreenHeight - ZY_TabbarHeight()), style: .plain)
        tableView?.backgroundColor = COLOR_MAIN
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.register(ZYClassificationTableViewCell.classForCoder(), forCellReuseIdentifier: "tableViewCellID")
        view.addSubview(tableView!)
        tableView?.reloadData()
        tableView?.selectRow(at: NSIndexPath(row: 0, section: 0) as IndexPath, animated: true, scrollPosition: .top)
        
        
        
        
        collectionView = UICollectionView(frame: CGRect(x: 95, y: 0, width: kScreenWidth - 95, height: kScreenHeight - ZY_TabbarHeight()), collectionViewLayout: layout)
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(ZYClassificationCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "CellWithReuseIdentifier")
        collectionView?.register(ZYCollectionViewHeaderView.classForCoder(), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "CellHeard")
        collectionView?.delegate = self
        collectionView?.dataSource = self
        view.addSubview(collectionView!)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "tableViewCellID"
        let  cell:ZYClassificationTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellID) as! ZYClassificationTableViewCell
        
        cell.titleLabel.text = allArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       _selectIndex = indexPath.row
    
        self.collectionView?.scrollToItem(at: NSIndexPath(row: 0, section: _selectIndex) as IndexPath, at: .top, animated: true)
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return allArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: kScreenWidth - 95, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let reuseIdentifier = "CellHeard"
        
        let view:ZYCollectionViewHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: reuseIdentifier, for: indexPath) as! ZYCollectionViewHeaderView
        if kind == UICollectionElementKindSectionHeader  {
            view.titleLabel.text = allArray[indexPath.section]
        }
        
        return view
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellID = "CellWithReuseIdentifier"
        let  cell:ZYClassificationCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! ZYClassificationCollectionViewCell
        
        
        return cell
    }
    //设置每个item的尺寸
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (kScreenWidth-95 - 100)/3, height: 92)
    }
    //设置每个item的UIEdgeInsets
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(10, 25, 25, 25)
    }
    
    //设置每个item水平间距
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
    //设置每个item垂直间距
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
}
