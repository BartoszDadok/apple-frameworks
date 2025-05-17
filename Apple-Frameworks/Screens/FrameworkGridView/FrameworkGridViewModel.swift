//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Bartosz Dadok on 11/05/2025.
//

import SwiftUI


final class FrameworkGridViewModel: ObservableObject {
    
    var selecredFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()) ]
    
}
