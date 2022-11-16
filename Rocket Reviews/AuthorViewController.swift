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
            linkedinButton.isEnabled = false
        }
        
        if author?.instagram == "sem" {
            
            instagramButton.isEnabled = false
            
        }
        if author?.github == "sem" {
            
            githubButton.isEnabled = false
            
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
            if author?.instagram != "sem"
            {
                let url = URL(string: author!.instagram)
                UIApplication.shared.open(url!)
            }
            else{
            
                let alert = UIAlertController(title: "Alerta", message: "O usuário não possuí \(key)", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
            
                self.present(alert, animated: true)
            }
        case "linkedin":
            if author?.linkedin != "sem"
            {
                let url = URL(string: author!.linkedin)
                UIApplication.shared.open(url!)
            }
            else {
                
                let alert = UIAlertController(title: "Alerta", message: "O usuário não possuí \(key)", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
                
                self.present(alert, animated: true)
            }
        case "github":
            if author?.github != "sem"
            {
                let url = URL(string: author!.github)
                UIApplication.shared.open(url!)
            }
            else {
                
                let alert = UIAlertController(title: "Alerta", message: "O usuário não possuí \(key)", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
                
                self.present(alert, animated: true)
            }
        default:
            print("errou")
        }
    }
    
}
