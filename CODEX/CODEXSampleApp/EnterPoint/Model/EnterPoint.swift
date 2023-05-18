//
//  EnterPoint.swift
//  CODEX
//
//  Created by Hosea H C Li on 2023/5/18.
//

import Foundation
import SwiftUI

struct EnterPoint: Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    
    var status: String
    
    enum Progress {
        case backlog
        case inProgress
        case done
        case unowned
    }
    
    var progress: Progress {
        switch status {
        case "Backlog":
            return .backlog
        case "In progress":
            return .inProgress
        case "Done":
            return .done
        default:
            return .unowned
        }
    }
    
    var statusColor: Color {
        switch progress {
        case .backlog:
            return .gray
        case .inProgress, .done:
            return .green
        case .unowned:
            return .red
        }
    }
}
