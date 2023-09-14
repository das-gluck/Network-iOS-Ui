//
//  exploreScreen.swift
//  blackcoffer
//
//  Created by Gaurav Verma on 30/08/23.
//

import SwiftUI

struct exploreScreen: View {
    @State var selected = 0
    @State private var search = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
                TopBar(selected: $selected)
                
                GeometryReader { _ in
                    
                    VStack{
                        
                        if selected == 0 {
                            
                            VStack {
                                HStack{
                                    HStack{
                                        Image(systemName: "magnifyingglass").foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                                        TextField("Search" , text: $search)
                                    }.padding()
                                        .background(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke()
                                            .padding(3)
                                    )
                                    
                                    Button {
                                        //
                                    } label: {
                                        Image(systemName: "slider.horizontal.3")
                                            .font(.system(size: 30)).foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                                    }

                                }.padding(.all)
                                
                                ScrollView{
                                    VStack(spacing: 10) {
                                        ForEach(0..<5) {_ in
                                            Button {
                                                //
                                            } label: {
                                                VStack{
                                                    personal()
                                                }
                                            }

                                        }
                                    }
                                    
                                }
                                
                                
                            }
                            
                        } else if selected == 1 {
                            
                            VStack {
                                HStack{
                                    HStack{
                                        Image(systemName: "magnifyingglass").foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                                        TextField("Search" , text: $search)
                                    }.padding()
                                        .background(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke()
                                            .padding(3)
                                    )
                                    
                                    Button {
                                        //
                                    } label: {
                                        Image(systemName: "slider.horizontal.3")
                                            .font(.system(size: 30)).foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                                    }

                                }.padding(.all)
                                
                                ScrollView{
                                    VStack(spacing: 10) {
                                        ForEach(0..<5) {_ in
                                            Button {
                                                //
                                            } label: {
                                                VStack{
                                                    buisness()
                                                }
                                            }

                                        }
                                    }
                                    
                                }
                                
                                
                            }
                            
                        } else {
                            
                            VStack {
                                HStack{
                                    HStack{
                                        Image(systemName: "magnifyingglass").foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                                        TextField("Search" , text: $search)
                                    }.padding()
                                        .background(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke()
                                            .padding(3)
                                    )
                                    
                                    Button {
                                        //
                                    } label: {
                                        Image(systemName: "slider.horizontal.3")
                                            .font(.system(size: 30)).foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                                    }

                                }.padding(.all)
                                
                                ScrollView{
                                    VStack(spacing: 10) {
                                        ForEach(0..<5) {_ in
                                            Button {
                                                //
                                            } label: {
                                                VStack{
                                                    merchant()
                                                }
                                            }

                                        }
                                    }
                                    
                                }
                                
                                
                            }
                            
                        }
                    }
                }
                
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct exploreScreen_Previews: PreviewProvider {
    static var previews: some View {
        exploreScreen()
    }
}

struct TopBar: View {
    
    @Binding var selected : Int
    @State var showMenu: Bool = false
    
    var body: some View {
        
        
            VStack(spacing: 20){
                
                HStack(spacing: 40){
                    
                    Button(action: {

                    }) {
                        
                        Image(systemName: "text.alignleft").font(.system(size: 25)).foregroundColor(.white)
                    }
                    
                    
                    VStack(alignment: .leading,spacing: 4) {
                        Text("Howdy Name !!").font(.system(size: 20)).fontWeight(.semibold).foregroundColor(.white)
                        
                        HStack (){
                            Image(systemName: "location").font(.headline).foregroundColor(.white)
                            
                            Text("location").font(.system(size: 18)).fontWeight(.semibold).foregroundColor(.white)
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // refine button
                    }) {
                        NavigationLink(destination: refineScreen()) {
                            VStack(spacing: 4) {
                                Image(systemName: "checklist").font(.system(size: 25)).foregroundColor(.white)
                                Text("Refine").font(.system(size: 15)).fontWeight(.semibold).foregroundColor(.white)
                            }
                        }
                    }
                    
                    

                }
                
                Divider().frame(width:500 ,height: 1).overlay(.white)
                
                HStack (spacing: 70){
                    
                    Button(action: {
                        
                        self.selected = 0
                        
                    }) {
                        Text("Personel").fontWeight(.semibold).foregroundColor(self.selected == 0 ? .white : .gray)
                    }
                    
                    
                    Button(action: {
                        
                        self.selected = 1
                        
                    }) {
                        Text("Buisness").fontWeight(.semibold).foregroundColor(self.selected == 1 ? .white : .gray)
                    }

                    
                    Button(action: {
                        
                        self.selected = 2
                        
                    }) {
                        Text("Merchant").fontWeight(.semibold).foregroundColor(self.selected == 2 ? .white : .gray)
                    }
                    
               
                } .padding(.top)
                
                
            }.padding()
                .padding(.top,(UIApplication.shared.windows.last?.safeAreaInsets.top)! + 10)
            .background(Color(hue: 0.609, saturation: 0.865, brightness: 0.258))
        
        
    }
}



// personal tab page

struct personal: View {
    var body: some View {
        
        VStack(){
            
            VStack(alignment: .leading) {
                
                Button {
                    // Invite
                } label: {
                    Text("+ INVITE").foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339)).bold()
                        .offset(x: 280, y: -10)
                }
                
                HStack() {
                    
                    RoundedRectangle(cornerRadius: 30).fill(Color.gray).frame(width: 130,height: 130)
                        .overlay(Text("NG").font(.system(size: 48))
                            .foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339)))
                        .offset(x: -30, y: -30)
                    
                    VStack(alignment: .leading){
                        Text("Nihal Gupta").bold().foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                        
                        Text("Ghaziabad | Graduate Fresher").foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                        
                        Text("within 1 KM").bold().foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                        
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20).fill(Color.gray.opacity(0.5)).frame(width: 150,height: 20)
                            RoundedRectangle(cornerRadius: 15).fill(Color(hue: 0.609, saturation: 0.865, brightness: 0.258)).frame(width: 80,height: 20)
                        }
                    }
                    
                }
                
                VStack(alignment: .leading){
                    Text("Coffee | Buisness | Friendship").bold().foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                    Text("Hi community! I am open to new connections ").foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                }.padding(.leading, 20)
    
                
            }
            .frame(width: 380,height: 270)
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

// buisness tab page

struct buisness: View {
    var body: some View {
        
        VStack{
            
            VStack(alignment: .leading) {
                
                Button {
                    // Invite
                } label: {
                    Text("+ INVITE").foregroundColor(.black).bold()
                        .offset(x: 280, y: -10)
                }
                
                HStack() {
                    
                    RoundedRectangle(cornerRadius: 30).fill(Color.gray).frame(width: 130,height: 130)
                        .overlay(Text("AU").font(.system(size: 48)).foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339)))
                        .offset(x: -30, y: -30)
                    
                    VStack(alignment: .leading){
                        Text("Abh Uw").bold().foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                        Text("Norwich within 11.6 KM").foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                        
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20).fill(Color.gray.opacity(0.5)).frame(width: 150,height: 20)
                            RoundedRectangle(cornerRadius: 15).fill(Color(hue: 0.609, saturation: 0.865, brightness: 0.258)).frame(width: 80,height: 20)
                        }
                        
                        HStack(alignment: .center, spacing: 20){
                            
                            Button {
                                //
                            } label: {
                                Image(systemName: "phone.circle.fill").font(.system(size: 40)).foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                            }
                            
                            Button {
                                //
                            } label: {
                                Image(systemName: "person.crop.circle.badge.plus").font(.system(size: 40)).foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                            }

                        }.padding(.leading)
                    }
                    
                }
                
                VStack(alignment: .leading){
                    Text("lw | 76 yrs of Experience").bold().foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                    Text("Hi community! I am available to your service ").foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                }.padding(.leading, 20)
    
                
            }
            .frame(width: 380,height: 270)
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


// merchant tab page

struct merchant: View {
    var body: some View {
        
        VStack{
            
            VStack(alignment: .leading) {
                
                
                
                HStack() {
                    
                    RoundedRectangle(cornerRadius: 30).fill(Color.gray).frame(width: 130,height: 130)
                        .overlay(Text("").font(.system(size: 48)).foregroundColor(.blue))
                        .offset(x: -30, y: -30)
                    
                    VStack(alignment: .leading){
                        Text("24SEVEN").bold().foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                        Text("Ghaziabad, Uttar Pradesh").foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                        
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20).fill(Color.gray.opacity(0.5)).frame(width: 150,height: 20)
                            RoundedRectangle(cornerRadius: 15).fill(Color(hue: 0.609, saturation: 0.865, brightness: 0.258)).frame(width: 80,height: 20)
                        }
                        
                        HStack(alignment: .center, spacing: 20){
                            
                            Button {
                                //
                            } label: {
                                Image(systemName: "phone.circle.fill").font(.system(size: 40)).foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                            }
                            
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
                    Text("Hi community! we have great deals for you ").bold().foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                    Text("Convenience store").foregroundColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
                }.padding(.leading, 20)
    
                
            }
            .frame(width: 380,height: 270)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color(hue: 1.0, saturation: 0.015, brightness: 0.937))
            )
           
        }.frame(width: 400,height: 300)
            .padding(.horizontal,20)
            .compositingGroup()
            .shadow(color: .gray, radius: 5, x: 2, y: 2)
 
        
    }
}
