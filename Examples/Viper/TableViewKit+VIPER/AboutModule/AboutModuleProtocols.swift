//
//  AboutModuleProtocols.swift
//  TableViewKit+VIPER
//
//  Created by Nelson Dominguez Leon on 06/09/16.
//  Copyright © 2016 eDreams Odigeo. All rights reserved.
//

import Foundation
import UIKit

protocol AboutWireFrameProtocol: class {
    
    func presentAboutViewModule(_ navigationController: UINavigationController)
    func presentHelpCenter()
}

protocol AboutPresenterProtocol: class {
    
    var router: AboutWireFrameProtocol? { get set }
    var view: AboutViewControllerProtocol? { get set }
    
    func showHelpCenter()
    
    func showFaq()
    func showContactUs()
    func showTermsAndConditions()
    func showFeedback()
    func showShareApp()
    func showRateApp()
}

protocol AboutViewControllerProtocol: class {
    
    var presenter: AboutPresenterProtocol? { get set }
    
    func presentMessage(_ message: String, title: String)
}
