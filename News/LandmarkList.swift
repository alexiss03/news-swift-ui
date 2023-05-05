//
//  LandmarkList.swift
//  News
//
//  Created by Mary Alexis Solis on 8/16/20.
//  Copyright © 2020 Grommet Technologies. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews:  PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
