// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct StorageServiceStatsData : StorageServiceStatsProtocol {
    public var geoReplication: GeoReplicationProtocol?

    enum CodingKeys: String, CodingKey {
        case geoReplication = "GeoReplication"
    }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.geoReplication) {
        geoReplication = try container.decode(GeoReplicationData?.self, forKey: .geoReplication)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.geoReplication != nil {try container.encode(geoReplication as! GeoReplicationData?, forKey: .geoReplication)}
  }
}

extension DataFactory {
  public static func createStorageServiceStatsProtocol() -> StorageServiceStatsProtocol {
    return StorageServiceStatsData()
  }
}
