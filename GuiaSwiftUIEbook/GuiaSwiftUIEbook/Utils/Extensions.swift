//
//  Extensions.swift
//  EbookGuiaSwiftUI
//
//  Created by Matheus S. Moreira on 18/02/23.
//

import SwiftUI

extension Alignment: CustomStringConvertible {
    public var description: String {
        switch self {
            case .topLeading: return ".topLeading"
            case .top: return ".top"
            case .topTrailing: return ".topTrailing"
            case .leading: return ".leading"
            case .center: return ".center"
            case .trailing: return ".trailing"
            case .bottomLeading: return ".bottomLeading"
            case .bottom: return ".bottom"
            case.bottomTrailing: return ".bottomTrailing"
            default: return "other"
        }
    }
}
