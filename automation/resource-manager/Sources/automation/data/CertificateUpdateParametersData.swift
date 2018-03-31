// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CertificateUpdateParametersData : CertificateUpdateParametersProtocol {
    public var name: String?
    public var properties: CertificateUpdatePropertiesProtocol?

        enum CodingKeys: String, CodingKey {case name = "name"
        case properties = "properties"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.properties) {
        self.properties = try container.decode(CertificateUpdatePropertiesData?.self, forKey: .properties)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.properties != nil {try container.encode(self.properties as! CertificateUpdatePropertiesData?, forKey: .properties)}
  }
}

extension DataFactory {
  public static func createCertificateUpdateParametersProtocol() -> CertificateUpdateParametersProtocol {
    return CertificateUpdateParametersData()
  }
}
