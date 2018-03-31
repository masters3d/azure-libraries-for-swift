// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationHealthPolicyData : ApplicationHealthPolicyProtocol {
    public var considerWarningAsError: Bool?
    public var maxPercentUnhealthyDeployedApplications: Int32?
    public var defaultServiceTypeHealthPolicy: ServiceTypeHealthPolicyProtocol?
    public var serviceTypeHealthPolicyMap: [ServiceTypeHealthPolicyMapItemProtocol?]?

        enum CodingKeys: String, CodingKey {case considerWarningAsError = "ConsiderWarningAsError"
        case maxPercentUnhealthyDeployedApplications = "MaxPercentUnhealthyDeployedApplications"
        case defaultServiceTypeHealthPolicy = "DefaultServiceTypeHealthPolicy"
        case serviceTypeHealthPolicyMap = "ServiceTypeHealthPolicyMap"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.considerWarningAsError) {
        self.considerWarningAsError = try container.decode(Bool?.self, forKey: .considerWarningAsError)
    }
    if container.contains(.maxPercentUnhealthyDeployedApplications) {
        self.maxPercentUnhealthyDeployedApplications = try container.decode(Int32?.self, forKey: .maxPercentUnhealthyDeployedApplications)
    }
    if container.contains(.defaultServiceTypeHealthPolicy) {
        self.defaultServiceTypeHealthPolicy = try container.decode(ServiceTypeHealthPolicyData?.self, forKey: .defaultServiceTypeHealthPolicy)
    }
    if container.contains(.serviceTypeHealthPolicyMap) {
        self.serviceTypeHealthPolicyMap = try container.decode([ServiceTypeHealthPolicyMapItemData?]?.self, forKey: .serviceTypeHealthPolicyMap)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.considerWarningAsError != nil { try container.encode(self.considerWarningAsError, forKey: .considerWarningAsError) }
    if self.maxPercentUnhealthyDeployedApplications != nil { try container.encode(self.maxPercentUnhealthyDeployedApplications, forKey: .maxPercentUnhealthyDeployedApplications) }
    if self.defaultServiceTypeHealthPolicy != nil { try container.encode(self.defaultServiceTypeHealthPolicy as! ServiceTypeHealthPolicyData?, forKey: .defaultServiceTypeHealthPolicy) }
    if self.serviceTypeHealthPolicyMap != nil { try container.encode(self.serviceTypeHealthPolicyMap as! [ServiceTypeHealthPolicyMapItemData?]?, forKey: .serviceTypeHealthPolicyMap) }
  }
}

extension DataFactory {
  public static func createApplicationHealthPolicyProtocol() -> ApplicationHealthPolicyProtocol {
    return ApplicationHealthPolicyData()
  }
}
