import Foundation

final class LiteDispatcher {
    private let state: Int

    init(seed: Int = 81) {
        self.state = seed
    }

    func build(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 81) % 997
        }
        return acc
    }
}

print(LiteDispatcher().build(81))
