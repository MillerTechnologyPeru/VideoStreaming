//
//  Device.swift
//  
//
//  Created by Alsey Coleman Miller on 8/12/23.
//

import Foundation

/// Device
public struct Device: Equatable, Hashable, Codable, Identifiable {
    
    public let id: UUID
    
    public var apnsToken: String?
    
    public var language: Language
    
    public let secret: Data
    
    public init(
        id: UUID = UUID(),
        apnsToken: String? = nil,
        language: Language = Language.current,
        secret: Data
    ) {
        self.id = id
        self.apnsToken = apnsToken
        self.language = language
        self.secret = secret
    }
}
