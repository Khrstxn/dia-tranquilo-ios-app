import CallKit

final class CallDirectoryHandler: CXCallDirectoryProvider {

    private let testPhoneNumber: CXCallDirectoryPhoneNumber = 556721060056

    override func beginRequest(
        with context: CXCallDirectoryExtensionContext
    ) {
        context.addBlockingEntry(
            withNextSequentialPhoneNumber: testPhoneNumber
        )

        context.completeRequest()
    }
}
