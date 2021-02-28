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
    var time: String = ""
    var userId: String = ""
    var drink: Drink = Drink()
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
        return VStack {
            TextField("Drink Name", text: $rating.drink.name)
            TextField("Description", text: $rating.critique)
            TextField("score", value: $rating.score,formatter: NumberFormatter())
                .keyboardType(UIKeyboardType.decimalPad)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rating: Rating())
    }
}
