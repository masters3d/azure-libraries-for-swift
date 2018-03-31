// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct ServiceListContainersHeadersData : ServiceListContainersHeadersProtocol {
    public var requestId: String?
    public var version: String?

    enum CodingKeys: String, CodingKey {
        case requestId = "x-ms-request-id"
        case version = "x-ms-version"
    }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.requestId) {
        requestId = try container.decode(String.self, forKey: .requestId)
    }
    if container.contains(.version) {
        version = try container.decode(String.self, forKey: .version)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.requestId != nil {try container.encode(requestId, forKey: .requestId)}
    if self.version != nil {try container.encode(version, forKey: .version)}
  }
}

extension DataFactory {
  public static func createServiceListContainersHeadersProtocol() -> ServiceListContainersHeadersProtocol {
    return ServiceListContainersHeadersData()
  }
}
