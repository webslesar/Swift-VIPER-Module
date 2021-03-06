//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation
import XCTest
@testable import ___PROJECTNAME___

class ___VARIABLE_MODULE_NAME___RouterTest: XCTestCase {
    var fakeView: Fake___FILEBASENAME___ViewController!
    var fakePresenter: Fake___FILEBASENAME___Presenter!
    var fakeInteractor: Fake___FILEBASENAME___Interactor!
    
    var router: ___FILEBASENAME___Router!
    
    
    override func setUp() {
        super.setUp()
        configureObjects()
    }
    
    override func tearDown() {
        fakePresenter = nil
        router = nil
        fakeView = nil
        fakeInteractor = nil
        super.tearDown()
    }
    
    fileprivate func configureObjects() {
        //View
        fakeView = Fake___FILEBASENAME___ViewController()
        
        //Router
        router = ___FILEBASENAME___Router()
        router.viewController = fakeView
        
        //Model
        fakeInteractor = Fake___FILEBASENAME___Interactor()
        
        //Presenter
        fakePresenter = Fake___FILEBASENAME___Presenter(interface: fakeView,
                                                    interactor: fakeInteractor,
                                                    router: router)
        fakeInteractor.output = fakePresenter
    }
}

extension ___VARIABLE_MODULE_NAME___RouterTest {
    func test() {
        
    }
}
