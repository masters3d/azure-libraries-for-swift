// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// CustomDomainProtocol is the custom domain assigned to this storage account. This can be set via Update.
public protocol CustomDomainProtocol : Codable {
     var name: String { get set }
     var useSubDomain: Bool? { get set }
}
