import Observation
import Shaft

@Observable class Counter {
    var count = 0
}

let counter = Counter()

runApp(
    Playground()
)

final class Playground: StatelessWidget {
    func build(context: BuildContext) -> Widget {
        Column(mainAxisSize: .min, spacing: 16) {
            Text("Count: \(counter.count)")

            Button {
                counter.count += 1
            } child: {
                Text("Increment")
            }
        }
        .center()
    }
}
