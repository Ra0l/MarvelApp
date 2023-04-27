//
//  HomeRouter.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/27/23.
//  
//

import UIKit

protocol HomeRouterProtocol {}

class HomeRouter: HomeRouterProtocol {
    
    private unowned let viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
}
