//
//  HomePresenter.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/27/23.
//  
//

import UIKit

protocol HomePresenterProtocol {}

final class HomePresenter {
    
    unowned var view: HomeView!
    var interactor: HomeInteractorProtocol!
    var router: HomeRouterProtocol!
    
}

extension HomePresenter: HomePresenterProtocol {
    
}
