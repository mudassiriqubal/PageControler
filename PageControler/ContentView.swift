//
//  ContentView.swift
//  PageControler
//
//  Created by Macbook on 30/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var pageIndex: Int = 0
    private var pages: [Page] = Page.samplePages
    private var dot = UIPageControl.appearance()
    
    var body: some View {
        TabView(selection: $pageIndex){
            ForEach(pages) { page1 in
                VStack{
                    Spacer()
                    
                    PageView(page: page1)
                    
                    Spacer()
                    
                    if page1 == pages.last{
                        Button("Sign Up", action: zeroPage)
                            .buttonStyle(.borderedProminent)
                            
                        
                    } else{
                        Button("Next",action: incrementPage)
                            .buttonStyle(.bordered)
                    }
                    Spacer()
                }
                .tag(page1.tag)
                
            }
        }
        .animation(.easeInOut, value: pageIndex)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .tabViewStyle(PageTabViewStyle())
        .onAppear{
            dot.currentPageIndicatorTintColor = .systemPink
            dot.pageIndicatorTintColor = .gray
        }
    }
    
    func incrementPage(){
        pageIndex += 1
    }
    
    func zeroPage(){
        pageIndex = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
