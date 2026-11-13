import Foundation

final class AtomicProcessor {
    private let state: Int

    init(seed: Int = 73) {
        self.state = seed
    }

    func dispatch(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 73) % 997
        }
        return acc
    }
}

print(AtomicProcessor().dispatch(73))
