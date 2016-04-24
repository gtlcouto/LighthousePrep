//
//  SwiftCar.swift
//  CarsExample
//
//  Created by Gustavo Couto on 2016-04-24.
//  Copyright (c) 2016 Gustavo Couto. All rights reserved.
//

import Foundation


@objc class SwiftCar : NSObject{
    var model: String
    init(model: String){
        self.model = model
    }

    func drive(){
        println("Model is \(self.model)")
    }
}

@objc class SwiftToyota : SwiftCar {
    init(){
        super.init(model: "Prius")
    }

}