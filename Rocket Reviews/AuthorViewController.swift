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
    @IBOutlet weak var githubButton: UIButton!
    @IBOutlet weak var linkedinButton: UIButton!
    @IBOutlet weak var instagramButton: UIButton!
    
    var author : Author?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Perfil de \(author!.name)"
        nameLabel.text = author?.name
        avatar.image = author?.avatar
        descriptionLabel.text = author?.description
        
        disableLinksButtons()
        checkIfAuthorHaveDescription(description: descriptionLabel.text ?? "")
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func instagramButtonPressed(_ sender: UIButton) {
        openLink(key: "instagram")
        
    }
    @IBAction func linkedinButtonPressed(_ sender: UIButton) {
        openLink(key: "linkedin")
    }
    @IBAction func githubButtonPressed(_ sender: UIButton) {
        openLink(key: "github")
    }
    
    func disableLinksButtons() {
        if author?.linkedin == "sem" {
            linkedinButton.isHighlighted = true
            linkedinButton.isUserInteractionEnabled = false
        }
        if author?.instagram == "sem" {
            linkedinButton.isHighlighted = true
            linkedinButton.isUserInteractionEnabled = false
        }
        if author?.github == "sem" {
            linkedinButton.isHighlighted = true
            linkedinButton.isUserInteractionEnabled = false
        }
    }
    
    func checkIfAuthorHaveDescription(description: String) {
        if descriptionLabel.text == "" {
            descriptionLabel.text =  "Este perfil não possui descrição."
        }
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
