import Foundation

final class SecureCache {
    private let state: Int

    init(seed: Int = 19) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 19) % 997
        }
        return total
    }
}

print(SecureCache().render(19))
