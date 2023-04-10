//
//  NewTweetView.swift
//  TwitterSwiftUIClone
//
//  Created by Eliude Vemba on 01/06/22.
//

import SwiftUI

struct NewTweetView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("Cancel the tweet")
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                Button {
                    print("Cancel the tweet")
                } label: {
                    Text("Tweet")
                        .foregroundColor(Color(.white))
                        .padding()
                        .background(Color(.systemBlue))
                }
                .clipShape(Capsule())
            }
            .padding()
            
            Spacer()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
