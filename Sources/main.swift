import Observation
import Shaft

#if DEBUG && !os(Windows)
    import SwiftReload
    LocalSwiftReloader(onReload: backend.scheduleReassemble).start()
#endif

@Observable class Counter {
    var count = 0
}

let counter = Counter()

runApp(
    CounterView()
)

final class CounterView: StatelessWidget {
    func build(context: BuildContext) -> Widget {
        Column(mainAxisSize: .min, spacing: 16) {
            Text("Count: \(counter.count)")

            Button {
                counter.count += 10
            } child: {
                Text("Increment")
            }
        }
        .center()
    }
}
