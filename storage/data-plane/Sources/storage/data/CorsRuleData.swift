// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct CorsRuleData : CorsRuleProtocol {
    public var allowedOrigins: String
    public var allowedMethods: String
    public var allowedHeaders: String
    public var exposedHeaders: String
    public var maxAgeInSeconds: Int32

    enum CodingKeys: String, CodingKey {
        case allowedOrigins = "AllowedOrigins"
        case allowedMethods = "AllowedMethods"
        case allowedHeaders = "AllowedHeaders"
        case exposedHeaders = "ExposedHeaders"
        case maxAgeInSeconds = "MaxAgeInSeconds"
    }

  public init(allowedOrigins: String, allowedMethods: String, allowedHeaders: String, exposedHeaders: String, maxAgeInSeconds: Int32)  {
    self.allowedOrigins = allowedOrigins
    self.allowedMethods = allowedMethods
    self.allowedHeaders = allowedHeaders
    self.exposedHeaders = exposedHeaders
    self.maxAgeInSeconds = maxAgeInSeconds
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    allowedOrigins = try container.decode(String.self, forKey: .allowedOrigins)
    allowedMethods = try container.decode(String.self, forKey: .allowedMethods)
    allowedHeaders = try container.decode(String.self, forKey: .allowedHeaders)
    exposedHeaders = try container.decode(String.self, forKey: .exposedHeaders)
    maxAgeInSeconds = try container.decode(Int32.self, forKey: .maxAgeInSeconds)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(allowedOrigins, forKey: .allowedOrigins)
    try container.encode(allowedMethods, forKey: .allowedMethods)
    try container.encode(allowedHeaders, forKey: .allowedHeaders)
    try container.encode(exposedHeaders, forKey: .exposedHeaders)
    try container.encode(maxAgeInSeconds, forKey: .maxAgeInSeconds)
  }
}

extension DataFactory {
  public static func createCorsRuleProtocol(allowedOrigins: String, allowedMethods: String, allowedHeaders: String, exposedHeaders: String, maxAgeInSeconds: Int32) -> CorsRuleProtocol {
    return CorsRuleData(allowedOrigins: allowedOrigins, allowedMethods: allowedMethods, allowedHeaders: allowedHeaders, exposedHeaders: exposedHeaders, maxAgeInSeconds: maxAgeInSeconds)
  }
}
