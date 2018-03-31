// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RawCertificateDataData : RawCertificateDataProtocol {
    public var authType: AuthTypeEnum?
    public var certificate: [UInt8]?

        enum CodingKeys: String, CodingKey {case authType = "authType"
        case certificate = "certificate"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.authType) {
        self.authType = try container.decode(AuthTypeEnum?.self, forKey: .authType)
    }
    if container.contains(.certificate) {
        self.certificate = try container.decode([UInt8]?.self, forKey: .certificate)
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
    if self.authType != nil {try container.encode(self.authType, forKey: .authType)}
    if self.certificate != nil {try container.encode(self.certificate, forKey: .certificate)}
  }
}

extension DataFactory {
  public static func createRawCertificateDataProtocol() -> RawCertificateDataProtocol {
    return RawCertificateDataData()
  }
}
