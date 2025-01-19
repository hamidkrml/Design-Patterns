//
//  ContentView.swift
//  FactoryDesignPattern
//
//  Created by hamid on 19.01.25.
//

import SwiftUI

struct ContentView: View {
    @State private var books = BookListFactory.createDefaultBookList()
    var body: some View {
        NavigationView {
            VStack{
                
            List(books.data){ book in
                
                HStack(alignment: .top,spacing: 10){
                    Image(book.imageName)
                        .resizable()
                        .frame(width: 80,height: 80)
                        .cornerRadius(10)
                    
                    
                    VStack(alignment: .leading,spacing: 5){
                        Text(book.name)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text(book.author)
                            .font(.subheadline)
                        
                        Spacer()
                        
                        Text(book.price)
                            .foregroundStyle(.orange)
                        
                    }
                    .padding(.vertical, 5)
                    
                }
            }
            
                
            .navigationBarTitle("book list", displayMode: .large)
            .listStyle(PlainListStyle())
                
                HStack{
                    Button(action: {
                        books = BookListFactory.createDefaultBookList()
                    }){
                        Text("Default Books")
                            .font(.title2)
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }.frame(maxWidth: .infinity)
                    
                    Button(action: {
                        books = BookListFactory.createClassicBookList()
                    }){
                        Text("Classic book ")
                            .font(.title2)
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }.frame(maxWidth: .infinity)
                    
                    Button(action: {
                        books = BookListFactory.createScienceFictionBookList()
                    }){
                        Text("Scien book")
                            .font(.title2)
                            .padding()
                            .background(.purple)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }.frame(maxWidth: .infinity)
                }
                .padding()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
