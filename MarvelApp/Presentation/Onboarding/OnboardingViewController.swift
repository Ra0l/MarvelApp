//
//  OnboardingViewController.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/24/23.
//

import UIKit

class OnboardingViewController: UIViewController{
    
    var currentPage = 0 {
        didSet {
            if currentPage == arrslides.count - 1 {
                btnNext.setTitle("Get Start", for: .normal)
            } else {
                btnNext.setTitle("Next", for: .normal)
            }
        }
    }
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrslides = [OnboardingSlide]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        btnNext.layer.cornerRadius = 10
        
        arrslides.append(OnboardingSlide(title: "Tune In to the Premiere!", description: "We'll be LIVE from Hollywood for the Red Carpet World Premiere of 'Guardians of the Galaxy Vol. 3' at 8:15 p.m. ET / 5:15 p.m. PT on Thursday, April 27!", photo: UIImage(named: "4.svg")))
        arrslides.append(OnboardingSlide(title: "Spider-Man Movies Coming to Disney+", description: "Peter One, Peter Two, Peter Three AND Venom are all coming soon--some as soon as tomorrow!", photo:  UIImage(named: "2.svg")))
        arrslides.append(OnboardingSlide(title: "This Week's New Comics", description: "Celebrate She-Hulk's major milestone, behold the conclusion to Jason Aaron's epic 'Avengers' run, and more in this week's comics!", photo: UIImage(named: "6.svg")))
        
        pageControl.numberOfPages = arrslides.count
        
        btnNext.backgroundColor = .MVL_red
    }

    @IBAction func btnNextAction(_ sender: Any) {
        if currentPage != arrslides.count - 1 {
            currentPage += 1
            let index = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageControl.currentPage = currentPage
        } else {
            let storyboard = UIStoryboard(name: "Login", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "LoginView")
            vc.modalPresentationStyle = .fullScreen
            
            present(vc, animated: true)
        }
    }
    
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrslides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardindCollectionViewCell", for: indexPath) as? OnboardingCollectionViewCell else {
             return UICollectionViewCell()
        }
        cell.setup(_slide: arrslides[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        pageControl.currentPage = currentPage
    }
}

