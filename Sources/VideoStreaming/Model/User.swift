//
//  User.swift
//  
//
//  Created by Alsey Coleman Miller on 8/12/23.
//

import Foundation

/// User
public struct User: Equatable, Hashable, Codable, Identifiable {
    
    public let id: UUID
    
    public let username: String
    
    public var name: String
    
    public let gender: Gender
    
    
}

public extension User {
    
    enum Gender: String, Codable, CaseIterable {
        case male
        case female
    }
}
