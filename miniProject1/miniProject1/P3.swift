//
//  P3.swift
//  miniProject1
//
//  Created by mohamad on 1/3/21.
//

import SwiftUI



struct P3: View {
    @State private var didTap:Bool = false
    var customer : Book
    var body: some View {
        VStack(){
            Spacer()
            HStack(){
                VStack(){
                    Text("Name")
                        .font(.system(size: 22))
                        .padding()
                    Text("Phone number")
                        .font(.system(size: 22))
                        .padding()
                    Text("Total amount")
                        .font(.system(size: 22))
                        .padding()
                }.padding()
                VStack(){
                    Text("\(customer.name)")
                        .font(.system(size: 22))
                        .padding()
                    Text("\(customer.number)")
                        .font(.system(size: 22))
                        .padding()
                    Text("\(String(format: "%.2f", customer.total)) KWD")
                        .font(.system(size: 22))
                        .padding()
                }.padding()
                
            }
            Spacer()
            Button(action: {
                self.didTap = true
            }) {
                if didTap {
                    Text("Payment was confirmed")
                        .font(.system(size: 24))
                }
                else {
                    Text("Pay")
                        .font(.system(size: 24))
                }
            }
            .foregroundColor(.white)
            .frame(width: 250, height: 50, alignment: .center)
            .padding(.all, 20)
            .background(didTap ? Color.green : Color.blue)
            .cornerRadius(20)
        }
        
    }
    
}


struct P3_Previews: PreviewProvider {
    static var previews: some View {
        P3(customer: test)
            .previewDevice("iPhone 11")
    }
}
