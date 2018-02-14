// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CustomImagePropertiesFromVmData : CustomImagePropertiesFromVmProtocol {
    public var sourceVmId: String?
    public var windowsOsInfo: WindowsOsInfoProtocol?
    public var linuxOsInfo: LinuxOsInfoProtocol?

        enum CodingKeys: String, CodingKey {case sourceVmId = "sourceVmId"
        case windowsOsInfo = "windowsOsInfo"
        case linuxOsInfo = "linuxOsInfo"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sourceVmId) {
        self.sourceVmId = try container.decode(String?.self, forKey: .sourceVmId)
    }
    if container.contains(.windowsOsInfo) {
        self.windowsOsInfo = try container.decode(WindowsOsInfoData?.self, forKey: .windowsOsInfo)
    }
    if container.contains(.linuxOsInfo) {
        self.linuxOsInfo = try container.decode(LinuxOsInfoData?.self, forKey: .linuxOsInfo)
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
    if self.sourceVmId != nil {try container.encode(self.sourceVmId, forKey: .sourceVmId)}
    if self.windowsOsInfo != nil {try container.encode(self.windowsOsInfo as! WindowsOsInfoData?, forKey: .windowsOsInfo)}
    if self.linuxOsInfo != nil {try container.encode(self.linuxOsInfo as! LinuxOsInfoData?, forKey: .linuxOsInfo)}
  }
}

extension DataFactory {
  public static func createCustomImagePropertiesFromVmProtocol() -> CustomImagePropertiesFromVmProtocol {
    return CustomImagePropertiesFromVmData()
  }
}
