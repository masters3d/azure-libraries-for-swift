// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PnsCredentialsPropertiesData : PnsCredentialsPropertiesProtocol {
    public var apnsCredential: ApnsCredentialProtocol?
    public var wnsCredential: WnsCredentialProtocol?
    public var gcmCredential: GcmCredentialProtocol?
    public var mpnsCredential: MpnsCredentialProtocol?
    public var admCredential: AdmCredentialProtocol?
    public var baiduCredential: BaiduCredentialProtocol?

        enum CodingKeys: String, CodingKey {case apnsCredential = "apnsCredential"
        case wnsCredential = "wnsCredential"
        case gcmCredential = "gcmCredential"
        case mpnsCredential = "mpnsCredential"
        case admCredential = "admCredential"
        case baiduCredential = "baiduCredential"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.apnsCredential) {
        self.apnsCredential = try container.decode(ApnsCredentialData?.self, forKey: .apnsCredential)
    }
    if container.contains(.wnsCredential) {
        self.wnsCredential = try container.decode(WnsCredentialData?.self, forKey: .wnsCredential)
    }
    if container.contains(.gcmCredential) {
        self.gcmCredential = try container.decode(GcmCredentialData?.self, forKey: .gcmCredential)
    }
    if container.contains(.mpnsCredential) {
        self.mpnsCredential = try container.decode(MpnsCredentialData?.self, forKey: .mpnsCredential)
    }
    if container.contains(.admCredential) {
        self.admCredential = try container.decode(AdmCredentialData?.self, forKey: .admCredential)
    }
    if container.contains(.baiduCredential) {
        self.baiduCredential = try container.decode(BaiduCredentialData?.self, forKey: .baiduCredential)
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
    if self.apnsCredential != nil {try container.encode(self.apnsCredential as! ApnsCredentialData?, forKey: .apnsCredential)}
    if self.wnsCredential != nil {try container.encode(self.wnsCredential as! WnsCredentialData?, forKey: .wnsCredential)}
    if self.gcmCredential != nil {try container.encode(self.gcmCredential as! GcmCredentialData?, forKey: .gcmCredential)}
    if self.mpnsCredential != nil {try container.encode(self.mpnsCredential as! MpnsCredentialData?, forKey: .mpnsCredential)}
    if self.admCredential != nil {try container.encode(self.admCredential as! AdmCredentialData?, forKey: .admCredential)}
    if self.baiduCredential != nil {try container.encode(self.baiduCredential as! BaiduCredentialData?, forKey: .baiduCredential)}
  }
}

extension DataFactory {
  public static func createPnsCredentialsPropertiesProtocol() -> PnsCredentialsPropertiesProtocol {
    return PnsCredentialsPropertiesData()
  }
}
