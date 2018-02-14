// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewaySslPolicyData : ApplicationGatewaySslPolicyProtocol {
    public var disabledSslProtocols: [ApplicationGatewaySslProtocolEnum?]?
    public var policyType: ApplicationGatewaySslPolicyTypeEnum?
    public var policyName: ApplicationGatewaySslPolicyNameEnum?
    public var cipherSuites: [ApplicationGatewaySslCipherSuiteEnum?]?
    public var minProtocolVersion: ApplicationGatewaySslProtocolEnum?

        enum CodingKeys: String, CodingKey {case disabledSslProtocols = "disabledSslProtocols"
        case policyType = "policyType"
        case policyName = "policyName"
        case cipherSuites = "cipherSuites"
        case minProtocolVersion = "minProtocolVersion"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.disabledSslProtocols) {
        self.disabledSslProtocols = try container.decode([ApplicationGatewaySslProtocolEnum?]?.self, forKey: .disabledSslProtocols)
    }
    if container.contains(.policyType) {
        self.policyType = try container.decode(ApplicationGatewaySslPolicyTypeEnum?.self, forKey: .policyType)
    }
    if container.contains(.policyName) {
        self.policyName = try container.decode(ApplicationGatewaySslPolicyNameEnum?.self, forKey: .policyName)
    }
    if container.contains(.cipherSuites) {
        self.cipherSuites = try container.decode([ApplicationGatewaySslCipherSuiteEnum?]?.self, forKey: .cipherSuites)
    }
    if container.contains(.minProtocolVersion) {
        self.minProtocolVersion = try container.decode(ApplicationGatewaySslProtocolEnum?.self, forKey: .minProtocolVersion)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.disabledSslProtocols != nil {try container.encode(self.disabledSslProtocols as! [ApplicationGatewaySslProtocolEnum?]?, forKey: .disabledSslProtocols)}
    if self.policyType != nil {try container.encode(self.policyType, forKey: .policyType)}
    if self.policyName != nil {try container.encode(self.policyName, forKey: .policyName)}
    if self.cipherSuites != nil {try container.encode(self.cipherSuites as! [ApplicationGatewaySslCipherSuiteEnum?]?, forKey: .cipherSuites)}
    if self.minProtocolVersion != nil {try container.encode(self.minProtocolVersion, forKey: .minProtocolVersion)}
  }
}

extension DataFactory {
  public static func createApplicationGatewaySslPolicyProtocol() -> ApplicationGatewaySslPolicyProtocol {
    return ApplicationGatewaySslPolicyData()
  }
}
