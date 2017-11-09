import azureSwiftRuntime
// List lists all the storage accounts available under the subscription. Note that storage keys are not returned; use
// the ListKeys operation for this.
class StorageAccountsListCommand : BaseCommand {
    var subscriptionId : String?
    var apiVersion : String? = "2017-06-01"

    override init() {
        super.init()
        self.method = "Get"
        self.isLongRunningOperation = false
        self.path = "/subscriptions/{subscriptionId}/providers/Microsoft.Storage/storageAccounts"
    }

    override func preCall()  {
        if self.subscriptionId != nil { pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId!) }
        if self.apiVersion != nil { queryParameters["api-version"] = String(describing: self.apiVersion!) }
    }

    override func returnFunc(decoder: ResponseDecoder, jsonString: String) throws -> Decodable? {
        return try decoder.decode(StorageAccountListResultType?.self, from: jsonString)
    }
}
