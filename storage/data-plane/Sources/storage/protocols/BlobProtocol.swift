// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// BlobProtocol is an Azure Storage blob
public protocol BlobProtocol : Codable {
     var name: String? { get set }
     var snapshot: Date? { get set }
     var properties: BlobPropertiesProtocol? { get set }
     var metadata: [String:String]? { get set }
}
