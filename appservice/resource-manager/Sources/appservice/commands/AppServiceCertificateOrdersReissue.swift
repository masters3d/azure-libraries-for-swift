import Foundation
import azureSwiftRuntime
public protocol AppServiceCertificateOrdersReissue {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var certificateOrderName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var reissueCertificateOrderRequest :  ReissueCertificateOrderRequestProtocol? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (Error?) -> Void)
}

extension Commands.AppServiceCertificateOrders {
// Reissue reissue an existing certificate order.
    internal class ReissueCommand : BaseCommand, AppServiceCertificateOrdersReissue {
        public var resourceGroupName : String
        public var certificateOrderName : String
        public var subscriptionId : String
        public var apiVersion = "2015-08-01"
    public var reissueCertificateOrderRequest :  ReissueCertificateOrderRequestProtocol?

        public init(resourceGroupName: String, certificateOrderName: String, subscriptionId: String, reissueCertificateOrderRequest: ReissueCertificateOrderRequestProtocol) {
            self.resourceGroupName = resourceGroupName
            self.certificateOrderName = certificateOrderName
            self.subscriptionId = subscriptionId
            self.reissueCertificateOrderRequest = reissueCertificateOrderRequest
            super.init()
            self.method = "Post"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CertificateRegistration/certificateOrders/{certificateOrderName}/reissue"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{certificateOrderName}"] = String(describing: self.certificateOrderName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = reissueCertificateOrderRequest

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(reissueCertificateOrderRequest as? ReissueCertificateOrderRequestData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }
}
