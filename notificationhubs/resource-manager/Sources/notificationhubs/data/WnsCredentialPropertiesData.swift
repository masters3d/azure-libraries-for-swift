// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WnsCredentialPropertiesData : WnsCredentialPropertiesProtocol {
    public var packageSid: String?
    public var secretKey: String?
    public var windowsLiveEndpoint: String?

        enum CodingKeys: String, CodingKey {case packageSid = "packageSid"
        case secretKey = "secretKey"
        case windowsLiveEndpoint = "windowsLiveEndpoint"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.packageSid) {
        self.packageSid = try container.decode(String?.self, forKey: .packageSid)
    }
    if container.contains(.secretKey) {
        self.secretKey = try container.decode(String?.self, forKey: .secretKey)
    }
    if container.contains(.windowsLiveEndpoint) {
        self.windowsLiveEndpoint = try container.decode(String?.self, forKey: .windowsLiveEndpoint)
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
    if self.packageSid != nil {try container.encode(self.packageSid, forKey: .packageSid)}
    if self.secretKey != nil {try container.encode(self.secretKey, forKey: .secretKey)}
    if self.windowsLiveEndpoint != nil {try container.encode(self.windowsLiveEndpoint, forKey: .windowsLiveEndpoint)}
  }
}

extension DataFactory {
  public static func createWnsCredentialPropertiesProtocol() -> WnsCredentialPropertiesProtocol {
    return WnsCredentialPropertiesData()
  }
}
