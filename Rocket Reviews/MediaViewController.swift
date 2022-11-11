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
    
    var serieName: String?
    var serieImage: UIImage?
    
    @IBOutlet weak var textSummary: UILabel!
    
    var serieSummaty: String?
    var serieTextSummary: String?
    
    @IBOutlet weak var textSynopse: UILabel!
    
    var serieSynopse: String?
    var serieTextSynopse: String?
    
  
    @IBOutlet weak var textAnalysis: UILabel!
    
    var serieAnalysis: String?
    var serieTextAnalysis: String?
    
    @IBOutlet weak var labelNameAuthor: UILabel!
    @IBOutlet weak var imageAuthor: UIImageView!
    
    var serieNameAuthor: String?
    var serieImageAuthor: UIImage?
    
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
        
        
    }
    

    
   
    @IBAction func backButtonPressed(_ sender: Any) {
        
        self.dismiss(animated: true)
    }
}
