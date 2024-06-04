//
//  Profile.swift
//  Only
//
//  Created by wsjung on 6/4/24.
//

import Foundation
import SwiftData

@Model
final class Profile {
    let id: UUID
    let nickName: String
    let profileDescription: String
    let mbtiRawValue: String
    
    var mbti: MBTIType {
        MBTIType(rawValue: mbtiRawValue) ?? .ISFJ
    }
    
    init(
        id: UUID,
        nickName: String,
        profileDescription: String,
        mbti: MBTIType
    ) {
        self.id = id
        self.nickName = nickName
        self.profileDescription = profileDescription
        self.mbtiRawValue = mbti.rawValue
    }
}
