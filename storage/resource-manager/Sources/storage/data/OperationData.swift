// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct OperationData : OperationProtocol {
    public var name: String?
    public var display: OperationDisplayProtocol?
    public var origin: String?
    public var operationProperties: OperationPropertiesProtocol?

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case display = "display"
        case origin = "origin"
        case operationProperties = "properties"
    }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.name) {
        name = try container.decode(String.self, forKey: .name)
    }
    if container.contains(.display) {
        display = try container.decode(OperationDisplayData?.self, forKey: .display)
    }
    if container.contains(.origin) {
        origin = try container.decode(String.self, forKey: .origin)
    }
    if container.contains(.operationProperties) {
        operationProperties = try container.decode(OperationPropertiesData?.self, forKey: .operationProperties)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.name != nil {try container.encode(name, forKey: .name)}
    if self.display != nil {try container.encode(display as! OperationDisplayData?, forKey: .display)}
    if self.origin != nil {try container.encode(origin, forKey: .origin)}
    if self.operationProperties != nil {try container.encode(operationProperties as! OperationPropertiesData?, forKey: .operationProperties)}
  }
}

extension DataFactory {
  public static func createOperationProtocol() -> OperationProtocol {
    return OperationData()
  }
}
