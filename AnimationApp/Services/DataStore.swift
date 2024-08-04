//
//  DataStore.swift
//  AnimationApp
//
//  Created by NikolayD on 04.08.2024.
//
import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    var presets: [String] {
        AnimationPreset.allCases.map { $0.rawValue }
    }
    
    var curves: [String] {
        AnimationCurve.allCases.map { $0.rawValue }
    }
    
    private init() {}
}
