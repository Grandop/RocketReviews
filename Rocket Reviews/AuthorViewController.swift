//
//  AuthorViewController.swift
//  Rocket Reviews
//
//  Created by Raul de Medeiros on 11/11/22.
//

import UIKit

class AuthorViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    let author : Author? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Perfil de \(String(describing: author?.name))"
        nameLabel.text = author?.name
        avatar.image = author?.avatar
        descriptionLabel.text = author?.description
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func instagramButtonPressed(_ sender: UIButton) {
        
    }
    @IBAction func linkedinButtonPressed(_ sender: UIButton) {
    }
    @IBAction func githubButtonPressed(_ sender: UIButton) {
    }
    
    func openLink(key: String){
        switch key{
        case "instagram":
            let url = URL(string: author!.instagram)
            UIApplication.shared.open(url!)
        case "linkedin":
            let url = URL(string: author!.linkedin)
            UIApplication.shared.open(url!)
        case "github":
            let url = URL(string: author!.github)
            UIApplication.shared.open(url!)
        default:
            print("errou")
        }
    }
    
}
