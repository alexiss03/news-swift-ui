//
//  LandmarkRow.swift
//  News
//
//  Created by Mary Alexis Solis on 8/16/20.
//  Copyright © 2020 Grommet Technologies. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            //Text("Hello World")
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
             LandmarkRow(landmark: landmarkData[0])
             LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        

    }
}
