//
//  SideMenuView.swift
//  TwitterSwiftUIClone
//
//  Created by Eliude Vemba on 28/05/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                VStack(alignment: .leading, spacing: 4) {
                    Text("Eliude Vemba")
                        .font(.headline)
                    Text("@HelioPC")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                if option == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuRowView(viewModel: option)
                    }
                } else if option == .logout {
                    Button {
                        print("Handle logout here...")
                    } label: {
                        SideMenuRowView(viewModel: option)
                    }
                } else {
                    SideMenuRowView(viewModel: option)
                }
            }
            
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
