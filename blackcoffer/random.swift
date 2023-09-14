//
//  random.swift
//  blackcoffer
//
//  Created by Gaurav Verma on 03/09/23.
//

import SwiftUI

struct random: View {
    var body: some View {
        NavigationView {
            VStack{
                
                VStack(alignment: .leading) {
                    
                    
                    
                    HStack() {
                        
                        
                        
                        VStack(alignment: .leading){
                            Text("24SEVEN").bold()
                            Text("Ghaziabad, Uttar Pradesh, India within 3.3 KM")
                            
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 20).fill(Color.blue).frame(width: 150,height: 20)
                                RoundedRectangle(cornerRadius: 15).fill(Color.yellow).frame(width: 80,height: 20)
                            }
                            
                            HStack(alignment: .center, spacing: 20){
                                
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "phone.circle.fill").font(.system(size: 40)).foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                                }
                                
                                Button(action: {
                                    //
                                }, label: {
                                    NavigationLink(destination: refineScreen()) {
                                        Text("Open View").foregroundColor(.black)
                                     }
                                   
                                })
                                
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "person.crop.circle.badge.plus").font(.system(size: 40)).foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                                }
                                
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "location.circle").font(.system(size: 40)).foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                                }

                            }.padding(.leading)
                        }
                        
                    }
                    
                    
                    VStack(alignment: .leading){
                        Text("Hi community! we have great deals for you. Check us out ").bold()
                        Text("Convenience store")
                    }.padding(.leading, 20)
        
                    
                }
                .frame(width: 380,height: 290)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color(hue: 1.0, saturation: 0.015, brightness: 0.937))
                )
               
            }
            .frame(width: 400,height: 300)
            .padding(.horizontal,20)
            .compositingGroup()
        .shadow(color: .gray, radius: 5, x: 2, y: 2)
        }
            
            
            
    }
}

struct random_Previews: PreviewProvider {
    static var previews: some View {
        random()
    }
}
