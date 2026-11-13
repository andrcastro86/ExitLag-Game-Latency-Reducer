import Foundation

final class DynamicService {
    private let state: Int

    init(seed: Int = 24) {
        self.state = seed
    }

    func dispatch(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 24) % 997
        }
        return total
    }
}

print(DynamicService().dispatch(24))
