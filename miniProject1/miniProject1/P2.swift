//
//  P2.swift
//  miniProject1
//
//  Created by mohamad on 1/3/21.
//

import SwiftUI

struct P2: View {
    var card : Cards
    @State var cust : Book = test
    @State var name : String = ""
    @State var number : String = ""
    @State var amount : Int = 0
    @State var qty : Int = 0
    @State var total : Double = 0.0
    @State private var action: Int? = 0
    var body: some View {
        VStack(){
            NavigationLink(destination: P3(customer: cust), tag: 1, selection: $action) {
                EmptyView()
            }
            Spacer()
            Image(card.image)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250, alignment: .center)
            Spacer()
            TextField("Name", text: $name)
                .multilineTextAlignment(.leading)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Phone number", text: $number)
                .multilineTextAlignment(.leading)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Stepper("Card Value :  \(amount)  \(card.region)", value : $amount , in : 0...100 )
                .multilineTextAlignment(.trailing)
                .padding(20)
            Stepper("Number of cards :  \(qty)  ", value : $qty , in : 0...10)
                .multilineTextAlignment(.trailing)
                .padding()
            Spacer()
            if !name.isEmpty && !number.isEmpty && qty > 0 && amount > 0 {
                let total = (Double(amount)*card.price)*Double(qty)
                let temp = String(format: "%.2f", total)
                Text("Your total is \(temp) KWD")
                    .font(.system(size: 20))
                Button(action: {
                    cust.name = name
                    cust.total = total
                    cust.number = number
                    self.action = 1
                }, label: {
                    Text("Continue to checkout")
                        .font(.system(size: 26))
                        .foregroundColor(.white)
                        .frame(width: 250, height: 50, alignment: .center)
                        .padding(.all, 20)
                        .background(Color.blue)
                        .cornerRadius(20)

                })
            }
            
        }
    }
    
}


struct P2_Previews: PreviewProvider {
    static var previews: some View {
        P2(card: iTunesUS , cust: test )
            .previewDevice("iPhone 11")
    }
}
