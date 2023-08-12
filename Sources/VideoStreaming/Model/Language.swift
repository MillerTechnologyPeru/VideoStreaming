//
//  Language.swift
//  
//
//  Created by Alsey Coleman Miller on 8/12/23.
//

import Foundation

/// Authorization Token
public struct Language: Equatable, Hashable, RawRepresentable, Codable {
    
    public let rawValue: String
    
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}

// MARK: - CustomStringConvertible

extension Language: CustomStringConvertible {
    
    public var description: String {
        rawValue
    }
}

// MARK: - ExpressibleByStringLiteral

extension Language: ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String) {
        self.init(rawValue: value)
    }
}

// MARK: - Definitions

public extension Language {
    
    static var english: Language { "en" }
}

// MARK: - Locale

public extension Language {
    
    static var current: Language {
        self.init(locale: .current)
    }
    
    init(locale: Locale) {
        self.init(rawValue: locale._languageCode)
    }
}
