//
//  ContentView.swift
//  News
//
//  Created by Mary Alexis Solis on 5/11/20.
//  Copyright © 2020 Grommet Technologies. All rights reserved.
//

import SwiftUI

struct Tutor: Identifiable {
    var id: String
    
    var imageName: String
    var name: String
    var description: String
}

struct ContentView: View {
    var tutors: [Tutor] = []
    
    var body: some View {
        VStack {
            MapView(coordinate: landmarkData[0].locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmarkData[0].image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack(alignment: .top) {
                    Text("Joshua Tree National Park")
                    .font(.title)
                    Spacer()
                    Text("Californa")
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static let testData = [
        Tutor(id: "", imageName: "photo", name: "Anna", description: "This is a description."),
        Tutor(id: "", imageName: "photo", name: "Samuel", description: "This is a description.")]
    static var previews: some View {
        ContentView(tutors: testData)
    }
}
