//
//  Video.swift
//  
//
//  Created by Alsey Coleman Miller on 8/12/23.
//

import Foundation

/// Video
public struct Video: Equatable, Hashable, Codable {
    
    public let id: UUID
    
    public let created: Date
    
    public var title: String
    
    public var descriptionText: String
    
    public let duration: UInt64
}
