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
        duration: \(duration.formatted(.number.precision(.fractionLength(2))))
        delay: \(delay.formatted(.number.precision(.fractionLength(2))))
        """
        //force: \(force.formatted(.number.precision(.fractionLength(2))))
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.presets.randomElement() ?? "",
            curve: DataStore.shared.curves.randomElement() ?? "",
            force: Double.random(in: 1...2.5),
            duration: Double.random(in: 0.5...3),
            delay: Double.random(in: 0...1.5)
        )
    }
}
