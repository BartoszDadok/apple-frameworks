//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Bartosz Dadok on 11/05/2025.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}
