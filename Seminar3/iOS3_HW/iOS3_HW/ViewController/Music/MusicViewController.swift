//
//  MusicViewController.swift
//  iOS3_HW
//
//  Created by 김예은 on 09/11/2018.
//  Copyright © 2018 kyeahen. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController {

    @IBOutlet weak var musicTableView: UITableView!
    
    var musics : [Music] = ModelManager.sharedInstance.musics
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableView()

    }
    
    func setTableView(){
        
        self.musicTableView.delegate = self
        self.musicTableView.dataSource = self
        
        // 테이블 뷰에 내용이 나오지 않는 하단 부분의 선을 없애줍니다.
        musicTableView.tableFooterView = UIView(frame: .zero)
    }
    
    //MARK: Edit Action - ViewController
    @IBAction func editAction(_ sender: UIBarButtonItem) {
        
        if musicTableView.isEditing {
            sender.title = "Edit"
            musicTableView.setEditing(false, animated: true)
        } else {
            sender.title = "Done"
            musicTableView.setEditing(true, animated: true)
        }
    }
}

//MARK: - TableView extension
extension MusicViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MusicTableViewCell", for: indexPath) as! MusicTableViewCell
        
        cell.albumImageView.image = musics[indexPath.row].image
        cell.titleLabel.text = musics[indexPath.row].title
        cell.artistLabel.text = musics[indexPath.row].artist
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let datailVC = UIStoryboard(name: "Music", bundle: nil).instantiateViewController(withIdentifier: "MusicDetailViewController") as! MusicDetailViewController
        
        datailVC.image = musics[indexPath.row].image
        datailVC.musicTitle = musics[indexPath.row].title
        datailVC.artist = musics[indexPath.row].artist

        self.navigationController?.pushViewController(datailVC, animated: true)
    }
    
    //MARK: TableView Swipe Delete Action
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler: { (action, indexPath) in
            
            // remove the item from the data model
            self.musics.remove(at: indexPath.row)
            
            // delete the table view row
            tableView.deleteRows(at: [indexPath], with: .fade)
        })
        deleteAction.backgroundColor = UIColor.red
        
        return [deleteAction]
    }
    
    //MARK: TableView 재정렬
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
    }

}
