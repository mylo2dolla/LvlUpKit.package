// PanelType.swift
import Foundation

public enum PanelType: String, Codable, CaseIterable, Identifiable {
    case clipboard
    case menu
    case canvas
    case custom

    public var id: String { rawValue }
}
