// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct ContainerDeleteHeadersData : ContainerDeleteHeadersProtocol {
    public var requestId: String?
    public var version: String?
    public var date: Date?

    enum CodingKeys: String, CodingKey {
        case requestId = "x-ms-request-id"
        case version = "x-ms-version"
        case date = "Date"
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
    if container.contains(.date) {
        date = try container.decode(Date.self, forKey: .date)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.requestId != nil {try container.encode(requestId, forKey: .requestId)}
    if self.version != nil {try container.encode(version, forKey: .version)}
    if self.date != nil {try container.encode(date, forKey: .date)}
  }
}

extension DataFactory {
  public static func createContainerDeleteHeadersProtocol() -> ContainerDeleteHeadersProtocol {
    return ContainerDeleteHeadersData()
  }
}
