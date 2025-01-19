//
//  BookListFactory.swift
//  FactoryDesignPattern
//
//  Created by hamid on 19.01.25.
//

import Foundation


class BookListFactory{
    
    static func createDefaultBookList() -> BookList {
        
        let bookList = BookList()
        bookList.data = [
            book(name: "Swift Programming", price: "$29.99", imageName: "resim1", author: "John Doe"),
            book(name: "Advanced Swift", price: "$49.99", imageName: "resim3", author: "Jane Smith")
        ]
        return bookList
    }
    
    
    static func createClassicBookList() -> BookList {
        let bookList = BookList()
        bookList.data = [
            book(name: "Swift Programming", price: "$29.99", imageName: "resim2", author: "John Doe"),
            book(name: "Advanced Swift", price: "$49.99", imageName: "resim4", author: "Jane Smith")
        ]
        return bookList
    }
    
    
    
    static func createScienceFictionBookList() -> BookList {
        let bookList = BookList()
        bookList.data = [
            book(name: "Swift Programming", price: "$29.99", imageName: "resim1", author: "John Doe"),
            book(name: "Advanced Swift", price: "$49.99", imageName: "resim2", author: "Jane Smith")
        ]
        return bookList
    }
    
    
    
    
    
    
    
}
