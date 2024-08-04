//
//  Animation.swift
//  AnimationApp
//
//  Created by NikolayD on 04.08.2024.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        \(String(format: "force: %.2f", force))
        \(String(format: "duration: %.2f", duration))
        \(String(format: "delay: %.2f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.presets.randomElement() ?? "",
            curve: DataStore.shared.curves.randomElement() ?? "",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 0.5...3.5),
            delay: Double.random(in: 0...0.5)
        )
    }
}
