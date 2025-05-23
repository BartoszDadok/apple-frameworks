//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Bartosz Dadok on 11/05/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        Spacer()
        
        FrameworkTitleView(framework: framework)
        
        Text(framework.description)
            .font(.body)
            .padding()
        
        Spacer()
        
        Button {
            isShowingSafariView = true
        } label: {
            AFButton(title: "Learn more")
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content:{
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
