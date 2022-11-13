//
//  MediaTableViewController.swift
//  Rocket Reviews
//
//  Created by Pedro Grando on 11/11/22.
//

import UIKit

class MediaCell: UITableViewCell {
    
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configCell(medias: Media) {
        coverImage.image = medias.image
        titleLabel.text = medias.title
        authorNameLabel.text = medias.author.name
        descriptionLabel.text = medias.description
    }
}
