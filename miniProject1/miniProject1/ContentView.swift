//
//  ContentView.swift
//  miniProject1
//
//  Created by mohamad on 1/2/21.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        NavigationView{
//            VStack(){
//                Text("chose from the cards below to buy")
//                List(cardsArr) { card in
//                    cardrow(card : card)
//                    }
//            }
//            }
//        }
//    }
//

struct ContentView: View {
    var body: some View {
        NavigationView(){
            List(cardsArr){ card in
                NavigationLink(
                    destination: P2(card: card),
                    label: {
                        cardrow(card: card)
                    })
            }.navigationTitle("My cards")
        }
    }
}


struct cardrow: View {
    var card : Cards
    @State var imgName  : String = ""
    var body: some View {
        
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
            Image(card.image)
                .resizable()
                .scaledToFit()
                .frame(width : 100, height : 100)
            VStack(alignment: .leading){
                Text(card.title)
                    .font(.largeTitle)
                    .padding()
            }
        }.padding(.vertical)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
