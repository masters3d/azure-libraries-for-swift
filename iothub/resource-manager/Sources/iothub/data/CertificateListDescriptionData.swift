// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CertificateListDescriptionData : CertificateListDescriptionProtocol {
    public var value: [CertificateDescriptionProtocol?]?

        enum CodingKeys: String, CodingKey {case value = "value"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.value) {
        self.value = try container.decode([CertificateDescriptionData?]?.self, forKey: .value)
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
    if self.value != nil { try container.encode(self.value as! [CertificateDescriptionData?]?, forKey: .value) }
  }
}

extension DataFactory {
  public static func createCertificateListDescriptionProtocol() -> CertificateListDescriptionProtocol {
    return CertificateListDescriptionData()
  }
}
