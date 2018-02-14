// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RetryPolicyData : RetryPolicyProtocol {
    public var retryType: RetryTypeEnum?
    public var retryInterval: String?
    public var retryCount: Int32?

        enum CodingKeys: String, CodingKey {case retryType = "retryType"
        case retryInterval = "retryInterval"
        case retryCount = "retryCount"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.retryType) {
        self.retryType = try container.decode(RetryTypeEnum?.self, forKey: .retryType)
    }
    if container.contains(.retryInterval) {
        self.retryInterval = try container.decode(String?.self, forKey: .retryInterval)
    }
    if container.contains(.retryCount) {
        self.retryCount = try container.decode(Int32?.self, forKey: .retryCount)
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
    if self.retryType != nil {try container.encode(self.retryType, forKey: .retryType)}
    if self.retryInterval != nil {try container.encode(self.retryInterval, forKey: .retryInterval)}
    if self.retryCount != nil {try container.encode(self.retryCount, forKey: .retryCount)}
  }
}

extension DataFactory {
  public static func createRetryPolicyProtocol() -> RetryPolicyProtocol {
    return RetryPolicyData()
  }
}
