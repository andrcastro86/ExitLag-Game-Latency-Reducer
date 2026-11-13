import Foundation

final class SharedClient {
    private let state: Int

    init(seed: Int = 17) {
        self.state = seed
    }

    func flush(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 17) % 997
        }
        return count
    }
}

print(SharedClient().flush(17))
