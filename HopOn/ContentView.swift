//
//  ContentView.swift
//  HopOn
//
//  Created by Griffin Tang on 2/25/21.
//
// poopooo

import SwiftUI

enum Score: Int, CaseIterable {
    case one = 1
    case two
    case three
    case four
    case five
}


//@TODO figure out firebase unique ID & date system
struct Rating {
    var ratingId: String = ""
    var time: Date
    var userId: String = ""
    var drinkId: String = ""
    var score: Score = .one
    var critique: String = ""
}

//@TODO make type into filterable nested types
struct Drink {
    var drink_id: String = ""
    var name: String = ""
    var drinkType: String = ""
    
    
}

struct ContentView: View {
    @State var rating: Rating
    var body: some View {
        print(rating.drinkId)
        return VStack {
            TextField("Beer Name", text: $rating.drinkId)
            TextField("Beer Name", text: $rating.drinkId)
            TextField("Beer Name", text: $rating.drinkId)
            TextField("Beer Name", text: $rating.drinkId)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rating: Rating())
    }
}
