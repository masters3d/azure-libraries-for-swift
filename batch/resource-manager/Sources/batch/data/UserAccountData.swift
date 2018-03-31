// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UserAccountData : UserAccountProtocol {
    public var name: String
    public var password: String
    public var elevationLevel: ElevationLevelEnum?
    public var linuxUserConfiguration: LinuxUserConfigurationProtocol?

        enum CodingKeys: String, CodingKey {case name = "name"
        case password = "password"
        case elevationLevel = "elevationLevel"
        case linuxUserConfiguration = "linuxUserConfiguration"
        }

  public init(name: String, password: String) {
    self.name = name
    self.password = password
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    self.password = try container.decode(String.self, forKey: .password)
    if container.contains(.elevationLevel) {
        self.elevationLevel = try container.decode(ElevationLevelEnum?.self, forKey: .elevationLevel)
    }
    if container.contains(.linuxUserConfiguration) {
        self.linuxUserConfiguration = try container.decode(LinuxUserConfigurationData?.self, forKey: .linuxUserConfiguration)
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
    try container.encode(self.name, forKey: .name)
    try container.encode(self.password, forKey: .password)
    if self.elevationLevel != nil { try container.encode(self.elevationLevel, forKey: .elevationLevel) }
    if self.linuxUserConfiguration != nil { try container.encode(self.linuxUserConfiguration as! LinuxUserConfigurationData?, forKey: .linuxUserConfiguration) }
  }
}

extension DataFactory {
  public static func createUserAccountProtocol(name: String, password: String) -> UserAccountProtocol {
    return UserAccountData(name: name, password: password)
  }
}
