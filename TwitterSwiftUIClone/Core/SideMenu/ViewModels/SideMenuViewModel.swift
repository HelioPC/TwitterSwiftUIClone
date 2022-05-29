//
//  SideMenuViewModel.swift
//  TwitterSwiftUIClone
//
//  Created by Eliude Vemba on 28/05/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists_
    case bookmarks
    case logout
    
    var title: String {
        switch self {
            case .profile: return "Profile"
            case .lists_: return "Lists"
            case .bookmarks: return "Bookmarks"
            case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
            case .profile: return "person"
            case .lists_: return "list.bullet"
            case .bookmarks: return "bookmark"
            case .logout: return "arrow.left.square"
        }
    }
}
