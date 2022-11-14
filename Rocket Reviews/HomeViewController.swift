//
//  ViewController.swift
//  Rocket Reviews
//
//  Created by Julia Eileen Schäfer on 11/11/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var searchBarTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var authorsList: [Author] = []
    var mediaList: [Media] = []
    var showMediaList : [Media] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authorsList = createAuthors()
        mediaList = createMedias()
        showMediaList = mediaList
        tableView.dataSource = self
        tableView.delegate = self

    }
    func searchTitle(title : String){
        showMediaList = []
        let textUser = searchBarTextField.text!
        if textUser == "" // se for vazio seta a lista como a lista padrao
        {
            showMediaList = mediaList
        }
        else{ // se nao for compara cada palavra escrita pelo user com cada palavra do titulo/autor
            for media in mediaList{
                let titleSplited = media.title.components(separatedBy: " ")
                
                if textUser.lowercased() == media.author.name.lowercased(){ // comparando text usuario com autor
                    showMediaList.append(media)
                }
                else{
                    let textUserSplited = textUser.components(separatedBy: " ")
                    for words in textUserSplited // comparando cada palabra do usuario com cada palavra do titulo
                    {
                        for title in titleSplited
                        {
                            if title.lowercased() == words.lowercased()
                            {
                                showMediaList.append(media)
                            }
                        }
                    }
                }
            }
        }
        
        tableView.reloadData()
    }
    
    func resetSearchBar(){
        searchBarTextField.text = ""
        searchBarTextField.resignFirstResponder()
    }
    
    
    @IBAction func searchButtonSelect(_ sender: UIButton) {
        searchTitle(title: searchBarTextField.text!)
        print("apertei")
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showMediaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MediaCell
        
        cell.configCell(medias: showMediaList[indexPath.row])
        return cell
    }
}

extension HomeViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let mediaStoryBoard: UIStoryboard = UIStoryboard(name: "MediaStoryboard", bundle: nil)
        
        let mediaViewController = mediaStoryBoard.instantiateViewController(withIdentifier: "MediaViewController") as! MediaViewController
        
        mediaViewController.media = showMediaList[indexPath.row]
        
        mediaViewController.modalPresentationStyle = .overFullScreen
        self.present(mediaViewController, animated: true)
    }
}



