//
//  Media.swift
//  Rocket Reviews
//
//  Created by Raul de Medeiros on 11/11/22.
//

import UIKit

class Media{
    
    let title : String
    let image : UIImage
    let description : String
    let synopsis : String
    let review : String
    let author : Author
    
    init(title: String, image: UIImage, description: String, synopsis: String, review: String, author: Author) {
        self.title = title
        self.image = image
        self.description = description
        self.synopsis = synopsis
        self.review = review
        self.author = author
    }
    
}
