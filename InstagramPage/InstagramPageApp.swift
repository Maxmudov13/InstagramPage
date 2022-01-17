//
//  InstagramPageApp.swift
//  InstagramPage
//
//  Created by user on 17/01/22.
//

import SwiftUI

@main
struct InstagramPageApp: App {
    var body: some Scene {
        WindowGroup {
            StartCenter().environmentObject(Status())
        }
    }
}
