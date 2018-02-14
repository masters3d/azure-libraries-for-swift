// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewaySslCertificatePropertiesFormatData : ApplicationGatewaySslCertificatePropertiesFormatProtocol {
    public var data: String?
    public var password: String?
    public var publicCertData: String?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case data = "data"
        case password = "password"
        case publicCertData = "publicCertData"
        case provisioningState = "provisioningState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.data) {
        self.data = try container.decode(String?.self, forKey: .data)
    }
    if container.contains(.password) {
        self.password = try container.decode(String?.self, forKey: .password)
    }
    if container.contains(.publicCertData) {
        self.publicCertData = try container.decode(String?.self, forKey: .publicCertData)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
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
    if self.data != nil {try container.encode(self.data, forKey: .data)}
    if self.password != nil {try container.encode(self.password, forKey: .password)}
    if self.publicCertData != nil {try container.encode(self.publicCertData, forKey: .publicCertData)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createApplicationGatewaySslCertificatePropertiesFormatProtocol() -> ApplicationGatewaySslCertificatePropertiesFormatProtocol {
    return ApplicationGatewaySslCertificatePropertiesFormatData()
  }
}
