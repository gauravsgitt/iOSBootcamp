//
//  Stats.swift
//  CocoaPods
//
//  Created by Gaurav Bisht on 24/10/21.
//  Copyright © 2021 Gaurav Bisht. All rights reserved.
//

import Foundation

struct Stats:Decodable {
    
    let id: String
    let author: String
    let width: Int
    let height: Int
    let download_url: String
}

