//
//  PageModel.swift
//  PageControler
//
//  Created by Macbook on 30/06/23.
//

import Foundation

struct Page: Identifiable , Equatable{
    
    let id = UUID()
    let title: String
    let description: String
    let image: String
    let tag: Int
    
    static var samplePage =  Page(title: "Sample Title", description: "Sample Description", image: "images", tag: 0)
    static var samplePages: [Page] = [
        Page(title: "Enter1", description: "Description1", image: "Onboarding1", tag: 0),
        Page(title: "Enter2", description: "Description2", image: "Onboarding2", tag: 1),
        Page(title: "Enter3", description: "Description3", image: "Onboarding3", tag: 2)
    ]
}
