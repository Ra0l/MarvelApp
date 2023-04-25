//
//  OnboardingCollectionViewCell.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/24/23.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    func setup(_slide: OnboardingSlide) {
        imageView.image = _slide.photo
        lblDescription.text = _slide.description
        lblTitle.text = _slide.title
    }
}
