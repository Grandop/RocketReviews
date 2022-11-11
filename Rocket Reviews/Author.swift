//
//  Author.swift
//  Rocket Reviews
//
//  Created by Raul de Medeiros on 11/11/22.
//

import UIKit


struct Author{
    let name : String
    var avatar : UIImage
    let description : String
    let github : String
    let instagram : String
    let linkedin : String

    init(name: String, avatar: UIImage, description: String, github: String = "sem", instagram: String = "sem", linkedin: String = "sem") {
        self.name = name
        self.avatar = avatar
        self.description = description
        self.github = github
        self.instagram = instagram
        self.linkedin = linkedin
    }
}
