// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct MetricsData : MetricsProtocol {
    public var version: String?
    public var enabled: Bool?
    public var includeAPIs: Bool?
    public var retentionPolicy: RetentionPolicyProtocol?

    enum CodingKeys: String, CodingKey {
        case version = "Version"
        case enabled = "Enabled"
        case includeAPIs = "IncludeAPIs"
        case retentionPolicy = "RetentionPolicy"
    }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.version) {
        version = try container.decode(String.self, forKey: .version)
    }
    if container.contains(.enabled) {
        enabled = try container.decode(Bool.self, forKey: .enabled)
    }
    if container.contains(.includeAPIs) {
        includeAPIs = try container.decode(Bool.self, forKey: .includeAPIs)
    }
    if container.contains(.retentionPolicy) {
        retentionPolicy = try container.decode(RetentionPolicyData?.self, forKey: .retentionPolicy)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.version != nil { try container.encode(version, forKey: .version) }
    if self.enabled != nil { try container.encode(enabled, forKey: .enabled) }
    if self.includeAPIs != nil { try container.encode(includeAPIs, forKey: .includeAPIs) }
    if self.retentionPolicy != nil { try container.encode(retentionPolicy as! RetentionPolicyData?, forKey: .retentionPolicy) }
  }
}

extension DataFactory {
  public static func createMetricsProtocol() -> MetricsProtocol {
    return MetricsData()
  }
}
