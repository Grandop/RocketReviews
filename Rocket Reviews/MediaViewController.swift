//
//  MediaViewController.swift
//  Rocket Reviews
//
//  Created by Pedro Grando on 11/11/22.
//

import UIKit

class MediaViewController: UIViewController {

    @IBOutlet weak var serieLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textSummary: UITextView!
    @IBOutlet weak var textSynopse: UITextView!
    @IBOutlet weak var textAnalysis: UITextView!
    
    @IBOutlet weak var labelNameAuthor: UILabel!
    @IBOutlet weak var imageAuthor: UIImageView!
    
    var media: Media?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        serieLabel.text = media?.title
        imageView.image = media?.image
        textSummary.text = media?.description
        textSynopse.text = media?.synopsis
        textAnalysis.text = media?.review
        labelNameAuthor.text = media?.author.name
        imageAuthor.image = media?.author.avatar
    }

    
    @IBAction func inspectProfileButtonPressed(_ sender: Any) {
 
        let authorStoryboard: UIStoryboard = UIStoryboard(name: "AuthorStoryboard", bundle: nil)
        let authorViewController = authorStoryboard.instantiateViewController(withIdentifier: "AuthorViewController") as! AuthorViewController
        
        authorViewController.author = media?.author
        
        self.present(authorViewController, animated: true)
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        
        self.dismiss(animated: true)
    }
}
