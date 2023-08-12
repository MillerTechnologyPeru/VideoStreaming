//
//  User.swift
//  
//
//  Created by Alsey Coleman Miller on 8/12/23.
//

import Foundation

/// User
public struct User: Equatable, Hashable, Codable {
            
    public let id: UUID
    
    public var email: String
    
    public var firstName: String
    
    public var lastName: String
    
    public var role: Role
    
    public init(
        id: UUID = UUID(),
        email: String,
        firstName: String,
        lastName: String,
        role: Role = .client
    ) {
        self.id = id
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.role = role
    }
}

public extension User {
    
    enum Role: String, Codable, CaseIterable {
        
        case master
        case admin
        case client
    }
}
