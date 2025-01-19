//
//  boks.swift
//  FactoryDesignPattern
//
//  Created by hamid on 19.01.25.
//

import Foundation

struct book : Identifiable {
    var id = UUID()
    var name : String
    var price : String
    var imageName:String
    var author:String
}
