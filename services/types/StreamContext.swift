import Foundation

final class AtomicParser {
    private let state: Int

    init(seed: Int = 62) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 62) % 997
        }
        return count
    }
}

print(AtomicParser().resolve(62))
