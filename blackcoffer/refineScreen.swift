//
//  refineScreen.swift
//  blackcoffer
//
//  Created by Gaurav Verma on 30/08/23.
//

import SwiftUI

struct refineScreen: View {
    
    @State var name: String = "Hi community! I am open to new connections '😊' "
    @State var slidervalue: Double = 10

    let grid = ["Coffee", "Buisness", "Hobbies", "Friendship", "Movies", "Dinning", "Dating", "Matrimony" ]
    let layout = [
        GridItem(.flexible(), spacing: 20) , GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20){
                
                Text("Select Your Availability ")
                    .font(.system(size: 22))
                    .bold()
                
                dropDown()
                
                Text("Add Your Status ")
                    .font(.system(size: 22))
                    .bold()
                
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(hue: 1.0, saturation: 0.039, brightness: 0.312), lineWidth: 1)
                    .frame(width: 370, height: 150)
                    .overlay {
                        VStack(alignment: .leading){
                            TextEditor(text: $name)
                                .padding()
                                .font(.system(size: 20))
                        }
                    }
                
                Text("Select Hyperlocal Distance ")
                    .font(.system(size: 22))
                    .bold()
                
                Text(
                    String(format: "%.0f",slidervalue)
                )
                    .background(
                        RoundedRectangle(cornerRadius: 20).fill(Color(hue: 0.338, saturation: 0.868, brightness: 0.222)).frame(width: 40,height: 30)
                    )
                    .foregroundColor(.white)
                    .offset(x: 160)
                    .padding()
                Slider(
                    value: $slidervalue,
                    in: 1...100,
                    step: 1.0,
                    minimumValueLabel: Text("1 Km"),
                    maximumValueLabel: Text("100 Km"),
                    label: {
                        Text("title")
                    }
                    
                ).tint(Color(hue: 0.361, saturation: 0.455, brightness: 0.29))
                    .padding()
                
                Text("Select Purpose ")
                    .font(.system(size: 22))
                    .bold()
                
                
                    LazyVGrid(columns: layout, spacing: 20) {
                        ForEach(grid, id: \.self) { item in
                            Button (action: {
                                //ds
                            }, label: {
                                VStack {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(hue: 1.0, saturation: 0.039, brightness: 0.312), lineWidth: 1)
                                        .frame(height: 50)
                                        .overlay {
                                            Text(item)
                                                .foregroundColor(.black)
                                        }
                                }
                            })
                        }
                    }
                    .padding()
                
                VStack(alignment: .center) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(hue: 0.338, saturation: 0.868, brightness: 0.222))
                        
                        .frame(width: 200, height: 30)
                        .overlay {
                            Button("Svae & Explore"){
                                
                            }.foregroundColor(.white)
                    }
                }.offset(x: 80)
                    .padding()
                            
            }
            .padding(.all)
        }
    }
}

struct refineScreen_Previews: PreviewProvider {
    static var previews: some View {
        refineScreen()
    }
}

struct dropDown: View {
    @State private var selection = "Available | Hey Lets Connect"
    let option = [
                  "Available | Hey Lets Connect",
                  "Away | Stay Discreet And Watch",
                  "Busy | Do Not Disturb | Will Catch Up Later",
                  "SOS | Emergency! Need Assistance! Help"
    ]

    var body: some View {
        
        HStack {
            Picker(" ", selection: $selection) {
                ForEach(option, id: \.self) {
                    Text("\($0)")
                }
            }
            .frame(width: 360.0)
            
            .pickerStyle(.menu)
            .accentColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.039, brightness: 0.312)/*@END_MENU_TOKEN@*/)
            .overlay {
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray)
                    .frame(width: 370,height: 40)
                    
            }
        }
    }
}

