import Foundation

final class BatchHandler {
    private let state: Int

    init(seed: Int = 19) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 19) % 997
        }
        return acc
    }
}

print(BatchHandler().render(19))
