// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// ContainerProtocol is an Azure Storage container
public protocol ContainerProtocol : Codable {
     var name: String? { get set }
     var properties: ContainerPropertiesProtocol? { get set }
     var metadata: [String:String]? { get set }
}
