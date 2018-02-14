// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IpsecPolicyData : IpsecPolicyProtocol {
    public var saLifeTimeSeconds: Int32
    public var saDataSizeKilobytes: Int32
    public var ipsecEncryption: IpsecEncryptionEnum
    public var ipsecIntegrity: IpsecIntegrityEnum
    public var ikeEncryption: IkeEncryptionEnum
    public var ikeIntegrity: IkeIntegrityEnum
    public var dhGroup: DhGroupEnum
    public var pfsGroup: PfsGroupEnum

        enum CodingKeys: String, CodingKey {case saLifeTimeSeconds = "saLifeTimeSeconds"
        case saDataSizeKilobytes = "saDataSizeKilobytes"
        case ipsecEncryption = "ipsecEncryption"
        case ipsecIntegrity = "ipsecIntegrity"
        case ikeEncryption = "ikeEncryption"
        case ikeIntegrity = "ikeIntegrity"
        case dhGroup = "dhGroup"
        case pfsGroup = "pfsGroup"
        }

  public init(saLifeTimeSeconds: Int32, saDataSizeKilobytes: Int32, ipsecEncryption: IpsecEncryptionEnum, ipsecIntegrity: IpsecIntegrityEnum, ikeEncryption: IkeEncryptionEnum, ikeIntegrity: IkeIntegrityEnum, dhGroup: DhGroupEnum, pfsGroup: PfsGroupEnum)  {
    self.saLifeTimeSeconds = saLifeTimeSeconds
    self.saDataSizeKilobytes = saDataSizeKilobytes
    self.ipsecEncryption = ipsecEncryption
    self.ipsecIntegrity = ipsecIntegrity
    self.ikeEncryption = ikeEncryption
    self.ikeIntegrity = ikeIntegrity
    self.dhGroup = dhGroup
    self.pfsGroup = pfsGroup
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.saLifeTimeSeconds = try container.decode(Int32.self, forKey: .saLifeTimeSeconds)
    self.saDataSizeKilobytes = try container.decode(Int32.self, forKey: .saDataSizeKilobytes)
    self.ipsecEncryption = try container.decode(IpsecEncryptionEnum.self, forKey: .ipsecEncryption)
    self.ipsecIntegrity = try container.decode(IpsecIntegrityEnum.self, forKey: .ipsecIntegrity)
    self.ikeEncryption = try container.decode(IkeEncryptionEnum.self, forKey: .ikeEncryption)
    self.ikeIntegrity = try container.decode(IkeIntegrityEnum.self, forKey: .ikeIntegrity)
    self.dhGroup = try container.decode(DhGroupEnum.self, forKey: .dhGroup)
    self.pfsGroup = try container.decode(PfsGroupEnum.self, forKey: .pfsGroup)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.saLifeTimeSeconds, forKey: .saLifeTimeSeconds)
    try container.encode(self.saDataSizeKilobytes, forKey: .saDataSizeKilobytes)
    try container.encode(self.ipsecEncryption, forKey: .ipsecEncryption)
    try container.encode(self.ipsecIntegrity, forKey: .ipsecIntegrity)
    try container.encode(self.ikeEncryption, forKey: .ikeEncryption)
    try container.encode(self.ikeIntegrity, forKey: .ikeIntegrity)
    try container.encode(self.dhGroup, forKey: .dhGroup)
    try container.encode(self.pfsGroup, forKey: .pfsGroup)
  }
}

extension DataFactory {
  public static func createIpsecPolicyProtocol(saLifeTimeSeconds: Int32, saDataSizeKilobytes: Int32, ipsecEncryption: IpsecEncryptionEnum, ipsecIntegrity: IpsecIntegrityEnum, ikeEncryption: IkeEncryptionEnum, ikeIntegrity: IkeIntegrityEnum, dhGroup: DhGroupEnum, pfsGroup: PfsGroupEnum) -> IpsecPolicyProtocol {
    return IpsecPolicyData(saLifeTimeSeconds: saLifeTimeSeconds, saDataSizeKilobytes: saDataSizeKilobytes, ipsecEncryption: ipsecEncryption, ipsecIntegrity: ipsecIntegrity, ikeEncryption: ikeEncryption, ikeIntegrity: ikeIntegrity, dhGroup: dhGroup, pfsGroup: pfsGroup)
  }
}
