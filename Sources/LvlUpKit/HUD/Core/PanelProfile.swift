//
//  PanelProfile.swift
//  LvlUpKit
//
//  Created by Mylo on 6/7/25.
//


// PanelProfile.swift
import Foundation

public struct PanelProfile: Identifiable, Codable, Equatable {
    public let id: UUID
    public var name: String
    public var activePanels: [PanelType]

    public init(id: UUID = UUID(), name: String, activePanels: [PanelType]) {
        self.id = id
        self.name = name
        self.activePanels = activePanels
    }
}
