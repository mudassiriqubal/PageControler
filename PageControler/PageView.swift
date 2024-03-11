//
//  PageView.swift
//  PageControler
//
//  Created by Macbook on 30/06/23.
//

import SwiftUI

struct PageView: View {
    var page: Page
    var body: some View {
        
        VStack(spacing: 10){
            
            
           
            Image("\(page.image)")
                .resizable()
                .frame(width: 400, height: 500)
                .padding(.top)
                .scaledToFit()
                .padding()
                .cornerRadius(20)
                .background(.gray.opacity(0.10))
                .cornerRadius(20)
                .padding()
            
            Text(page.title)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                .padding()
                .background(Color.yellow)
            Text(page.description)
                .font(.subheadline)
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                .padding()
                .background(Color.gray)
        }
    }
}
struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: Page.samplePage)
    }
}
