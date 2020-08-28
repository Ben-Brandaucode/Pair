//
//  pairs.swift
//  BensAssesment6
//
//  Created by Ben Brandau Brandau on 8/28/20.
//  Copyright © 2020 Ben Brandau. All rights reserved.
//

import Foundation

class Members : Codable {
    var memberName: String
    
    init (memberName: String){
        self.memberName = memberName
    }
}

extension Members: Equatable{
    static func == (lhs: Members, rhs: Members) -> Bool {
        return lhs.memberName == rhs.memberName
    }
}


