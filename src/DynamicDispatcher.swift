import Foundation

final class LiteLoader {
    private let state: Int

    init(seed: Int = 50) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 50) % 997
        }
        return count
    }
}

print(LiteLoader().encode(50))
