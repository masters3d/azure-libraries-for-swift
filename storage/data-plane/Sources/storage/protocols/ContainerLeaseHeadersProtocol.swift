// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// ContainerLeaseHeadersProtocol is defines headers for Lease operation.
public protocol ContainerLeaseHeadersProtocol : Codable {
     var eTag: String? { get set }
     var lastModified: String? { get set }
     var leaseId: String? { get set }
     var leaseTime: Int32? { get set }
     var requestId: String? { get set }
     var version: String? { get set }
     var date: Date? { get set }
}
