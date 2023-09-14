//
//  sideMenu.swift
//  blackcoffer
//
//  Created by Gaurav Verma on 03/09/23.
//

import SwiftUI

struct sideMenu: View {
    @State var showMenu: Bool = false 
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            VStack(alignment: .leading, spacing: 10){
                AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80"))
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                Text("Rohan")
                    .font(.title2.bold())
                Text("GGCHAZ0076000")
                    .font(.title2)
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius:20).fill(Color.gray.opacity(0.5)).frame(width: 150,height: 20)
                    RoundedRectangle(cornerRadius:15).fill(Color(hue: 0.609, saturation: 0.865, brightness: 0.258)).frame(width: 80,height: 20)
                }
                Text("Available")
                    .font(.title2)
                
            }
            .padding(.horizontal)
            .padding(.leading)
            .padding(.bottom)
            
            Divider().frame(height: 2).overlay(.black).padding(.top)
            
            ScrollView(.vertical, showsIndicators: true){
                
                VStack(alignment: .leading, spacing: 45){
                    
                    //tab button
                    
                    TabButton(title: "Profile", image: "person.fill").bold()
                    
                    TabButton(title: "My Network", image: "person.2.fill").bold()
                    
                    TabButton(title: "Switch to Buisness", image: "window.shade.open").bold()
                    
                    TabButton(title: "Dating", image: "heart.text.square.fill").bold()
                    
                    Group{
                        
                        TabButton(title: "Matrimony", image: "person.fill").bold()
                        
                        TabButton(title: "Buy-Sell-Rent", image: "handbag.fill").bold()
                        
                        TabButton(title: "Jobs", image: "bag.fill").bold()
                        
                        TabButton(title: "Buisness Cards", image: "creditcard").bold()
                        
                        TabButton(title: "Netclan Groups", image: "number").bold()
                        
                        TabButton(title: "Notes", image: "list.clipboard.fill").bold()
                        
                        TabButton(title: "Live Loation", image: "mappin.circle").bold()
                        
                    }
                    

                    
                    
                    
                    
                }
                .padding()
                .padding(.leading)
                .padding(.top,45)
                
            }
            
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.top)
        // max width
        
        .frame(width: getRect().width - 90)
        .frame(maxHeight: .infinity)
        .background(
            Color.primary
                .opacity(0.04)
                .ignoresSafeArea(.container, edges: .vertical)
        )
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
    
    
    @ViewBuilder
    func TabButton(title: String, image: String) -> some View{
        
        Button {
            //
        } label: {
            HStack(spacing: 20){
                Image(systemName: image)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30,height: 30)
                Text(title)
                    .font(.system(size: 25))
            }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)
        }

        
    }
    
}

struct sideMenu_Previews: PreviewProvider {
    static var previews: some View {
        sideMenu()
    }
}

extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
