// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MountSettingsData : MountSettingsProtocol {
    public var mountPoint: String?
    public var fileServerPublicIP: String?
    public var fileServerInternalIP: String?
    public var fileServerType: FileServerTypeEnum?

        enum CodingKeys: String, CodingKey {case mountPoint = "mountPoint"
        case fileServerPublicIP = "fileServerPublicIP"
        case fileServerInternalIP = "fileServerInternalIP"
        case fileServerType = "fileServerType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.mountPoint) {
        self.mountPoint = try container.decode(String?.self, forKey: .mountPoint)
    }
    if container.contains(.fileServerPublicIP) {
        self.fileServerPublicIP = try container.decode(String?.self, forKey: .fileServerPublicIP)
    }
    if container.contains(.fileServerInternalIP) {
        self.fileServerInternalIP = try container.decode(String?.self, forKey: .fileServerInternalIP)
    }
    if container.contains(.fileServerType) {
        self.fileServerType = try container.decode(FileServerTypeEnum?.self, forKey: .fileServerType)
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
    if self.mountPoint != nil {try container.encode(self.mountPoint, forKey: .mountPoint)}
    if self.fileServerPublicIP != nil {try container.encode(self.fileServerPublicIP, forKey: .fileServerPublicIP)}
    if self.fileServerInternalIP != nil {try container.encode(self.fileServerInternalIP, forKey: .fileServerInternalIP)}
    if self.fileServerType != nil {try container.encode(self.fileServerType, forKey: .fileServerType)}
  }
}

extension DataFactory {
  public static func createMountSettingsProtocol() -> MountSettingsProtocol {
    return MountSettingsData()
  }
}
