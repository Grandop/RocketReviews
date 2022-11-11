//
//  ViewController.swift
//  Rocket Reviews
//
//  Created by Julia Eileen Schäfer on 11/11/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var authorsList: [Author] = []
    var mediaList: [Media] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authorsList = createAuthors()
        mediaList = createMedias()
        tableView.dataSource = self
        tableView.delegate = self
        
        print("Authors \(authorsList.count), Media \(mediaList.count)")
    }


}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mediaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MediaCell
        
        cell.confgiCell(medias: mediaList[indexPath.row])
        return cell
    }
}

extension HomeViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let mediaStoryBoard: UIStoryboard = UIStoryboard(name: "MediaStoryboard", bundle: nil)
        
        let mediaViewController = mediaStoryBoard.instantiateViewController(withIdentifier: "MediaViewController") as! MediaViewController
        
        mediaViewController.media = mediaList[indexPath.row]
        print("alou")
        
        mediaViewController.modalPresentationStyle = .overFullScreen
        self.present(mediaViewController, animated: true)
    }
}

