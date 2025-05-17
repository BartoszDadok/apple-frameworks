//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Bartosz Dadok on 11/05/2025.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
             .font(.title2)
             .fontWeight(.semibold)
             .frame(width: 200, height: 50)
             .background(Color.red)
             .foregroundColor(.white)
             .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
