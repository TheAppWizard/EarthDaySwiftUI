//
//  ContentView.swift
//  EarthDaySwiftUI
//

//  Earth Day 2021
//  Created by Shreyas Vilaschandra Bhike on 22/04/21.
//  The App Wizard
//  Instagram : theappwizard2408
//
import SwiftUI




struct ContentView: View {
    
    var body: some View {
        FinalView()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





























struct FinalView: View {

    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
        ZStack{
            
            Image("name")
                .resizable()
                .frame(width: 350, height: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: -35, y: -250)
                .opacity(0.1)
            
            
            EarthView()
                .offset(x: -1, y: 500)
            MainPlant()
                .offset(x: 0, y: -70)
            

        }
      }
    }
}

//EarthView
struct EarthView: View {
    
    @State private var erotate = false
   
    var body: some View {
        ZStack{
            Image("earth")
                .resizable()
                .frame(width: 500, height: 500, alignment: .center)
                .shadow(color: .blue, radius: 50, x: 0.0, y: 0.0)
                .rotationEffect(.degrees(erotate ? 0 : 360))
                .opacity(1)
                .animation(Animation.easeInOut(duration: 3).delay(2).repeatForever(autoreverses: false))
                .onAppear {
                    erotate.toggle()
                }
            
            
            Ellipse()
                .foregroundColor(.black).opacity(0.2)
                .frame(width: 200, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: 0, y: -200)
            
            
            Image("plantstem")
                .resizable()
                .frame(width: 200, height: 300, alignment: .center)
                .shadow(color: .black, radius: 2, x: 0.0, y: 0.0)
                .opacity(1)
                .offset(x: 0, y: -350)
            
            
            
        }
        
    }
}


//MainPlant
struct MainPlant: View {
    
   // All Leaves
    @State private var rleaf = false
    @State private var lleaf = false
    @State private var mrleaf = false
    @State private var mlleaf = false
    
    var body: some View {
        ZStack {
            ZStack {
               
             
                Image("leaf")
                    .resizable()
                    .frame(width: 90, height: 180, alignment: .center)  // Left
                    .rotationEffect(.degrees( mlleaf ? -25 : -5), anchor: .bottom)
                    .offset(x: -25, y: 35)
                    .shadow(color: .green, radius: 5, x: 0.0, y: 0.0)
                    .animation(Animation.easeInOut(duration: 1.5).delay(1).repeatForever(autoreverses: true))
                    .onAppear {
                        mlleaf.toggle()
                    }
                
                Image("leaf")
                    .resizable()
                    .frame(width: 90, height: 180, alignment: .center) // Middle right
                    .shadow(color: .green, radius: 5, x: 0.0, y: 0.0)
                
                Image("leaf")
                    .resizable()
                    .frame(width: 90, height: 180, alignment: .center)   // Right
                    .rotationEffect(.degrees( mrleaf ? 25 : 5), anchor: .bottom)
                    .offset(x: 25, y: 45)
                    .shadow(color: .green, radius: 5, x: 0.0, y: 0.0)
                    .animation(Animation.easeInOut(duration: 1.5).delay(1).repeatForever(autoreverses: true))
                    .onAppear {
                        mrleaf.toggle()
                    }
                
                Image("leaf")
                    .resizable()
                    .frame(width: 90, height: 180, alignment: .center) // Left
                    .rotationEffect(.degrees( lleaf ? -50 : -10), anchor: .bottom)
                    .offset(x: -10, y: 150)
                    .shadow(color: .green, radius: 5, x: 0.0, y: 0.0)
                    .animation(Animation.easeInOut(duration: 1.5).delay(1).repeatForever(autoreverses: true))
                    .onAppear {
                        lleaf.toggle()
                    }
                
                Image("leaf")
                    .resizable()
                    .frame(width: 90, height: 180, alignment: .center) // Right
                    .rotationEffect(.degrees( rleaf ? 50 : 10), anchor: .bottom)
                    .shadow(color: .green, radius: 5, x: 0.0, y: 0.0)
                    .offset(x: 10, y: 120)
                    .animation(Animation.easeInOut(duration: 1.5).delay(1).repeatForever(autoreverses: true))
                    .onAppear {
                        rleaf.toggle()
                    }
                
            }
            
           
        }
    }
}

