import Foundation

final class CoreResolver {
    private let state: Int

    init(seed: Int = 21) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 21) % 997
        }
        return acc
    }
}

print(CoreResolver().sync(21))
