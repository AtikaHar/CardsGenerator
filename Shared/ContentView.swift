//
//  ContentView.swift
//  Shared
//
//  Created by Atika Haryouli on 04/11/2022.
//

import SwiftUI

struct ContentView: View {
    var picture : String
  
    @State var changeImage : Picture
   
    var body: some View {
    
        
        
        ZStack{

            Background(backgroundImage: "fond")
        
            VStack{
        
                Spacer()
                
        
                Card(picture: changeImage)
                    
                Spacer()
                Button(action: {
                    self.changeImage = RandomImage()
                
                }, label: {
            
            ButtonLabel(text: "?", backgroundColor: Color("mauve"))
        })
        .padding(100)
        }
         
        }
        
    }
        
    func RandomImage() -> Picture {
    
            let result = pictures.randomElement()!

            return result
    
        }

 

        }

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(picture: "picnic", changeImage: pictures[4])
    }
}

struct Card : View {
    var picture : Picture
    var body : some View {
        
        Image(picture.picture)
            .resizable()
            .frame(width: 300, height: 400)
            .scaledToFit()
            .border(.white, width: 10)
            .cornerRadius(10)
            .shadow(radius: 6)
    }
}



struct ButtonLabel : View {
    var text : String
    var backgroundColor : Color
    var body : some View{
        
        Text(text)
            .foregroundColor(.white)
            .font(.system(size: 40, weight: .semibold))
            .shadow(radius: 6)
            .frame(width: 200, height: 60, alignment: .center)
            .background(backgroundColor)
            .opacity(0.7)
            .cornerRadius(15)
            .padding(5)
            .background(.white)
            .cornerRadius(15)
            .shadow(radius: 6)
    }
}

struct Background: View {
    var backgroundImage : String
    var body: some View{
        
        Image(backgroundImage)
            .resizable()
            .ignoresSafeArea()
            .opacity(0.6)
            .blur(radius: 2)
     
    }
    
}
