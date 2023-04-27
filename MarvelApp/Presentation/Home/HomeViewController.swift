//
//  HomeViewController.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/27/23.
//  
//

protocol HomeView: AnyObject {}

final class HomeViewController: IBKBaseViewController {
    
    var presenter: HomePresenterProtocol!
    
}

extension HomeViewController: HomeView {
    
}
