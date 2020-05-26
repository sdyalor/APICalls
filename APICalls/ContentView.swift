//
//  ContentView.swift
//  APICalls
//
//  Created by rkedlor on 5/26/20.
//  Copyright © 2020 rkedlor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var sPosts: [Post] = []
  var body: some View {
    List(sPosts){ item in
      Text(item.title)
    }.onAppear{
      Api().getPosts { (poxsts) in
        self.sPosts = poxsts
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
