// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct LinuxConfigurationData : LinuxConfigurationProtocol {
    public var disablePasswordAuthentication: Bool?
    public var ssh: SshConfigurationProtocol?

        enum CodingKeys: String, CodingKey {case disablePasswordAuthentication = "disablePasswordAuthentication"
        case ssh = "ssh"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.disablePasswordAuthentication) {
        self.disablePasswordAuthentication = try container.decode(Bool?.self, forKey: .disablePasswordAuthentication)
    }
    if container.contains(.ssh) {
        self.ssh = try container.decode(SshConfigurationData?.self, forKey: .ssh)
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
    if self.disablePasswordAuthentication != nil {try container.encode(self.disablePasswordAuthentication, forKey: .disablePasswordAuthentication)}
    if self.ssh != nil {try container.encode(self.ssh as! SshConfigurationData?, forKey: .ssh)}
  }
}

extension DataFactory {
  public static func createLinuxConfigurationProtocol() -> LinuxConfigurationProtocol {
    return LinuxConfigurationData()
  }
}
