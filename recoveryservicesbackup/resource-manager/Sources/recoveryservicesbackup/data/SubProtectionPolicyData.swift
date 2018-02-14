// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SubProtectionPolicyData : SubProtectionPolicyProtocol {
    public var policyType: String?
    public var schedulePolicy: SchedulePolicyProtocol?
    public var retentionPolicy: RetentionPolicyProtocol?

        enum CodingKeys: String, CodingKey {case policyType = "policyType"
        case schedulePolicy = "schedulePolicy"
        case retentionPolicy = "retentionPolicy"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.policyType) {
        self.policyType = try container.decode(String?.self, forKey: .policyType)
    }
    if container.contains(.schedulePolicy) {
        self.schedulePolicy = try container.decode(SchedulePolicyData?.self, forKey: .schedulePolicy)
    }
    if container.contains(.retentionPolicy) {
        self.retentionPolicy = try container.decode(RetentionPolicyData?.self, forKey: .retentionPolicy)
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
    if self.policyType != nil {try container.encode(self.policyType, forKey: .policyType)}
    if self.schedulePolicy != nil {try container.encode(self.schedulePolicy as! SchedulePolicyData?, forKey: .schedulePolicy)}
    if self.retentionPolicy != nil {try container.encode(self.retentionPolicy as! RetentionPolicyData?, forKey: .retentionPolicy)}
  }
}

extension DataFactory {
  public static func createSubProtectionPolicyProtocol() -> SubProtectionPolicyProtocol {
    return SubProtectionPolicyData()
  }
}