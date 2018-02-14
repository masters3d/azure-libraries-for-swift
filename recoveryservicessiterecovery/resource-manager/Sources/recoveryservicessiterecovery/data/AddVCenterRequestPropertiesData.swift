// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AddVCenterRequestPropertiesData : AddVCenterRequestPropertiesProtocol {
    public var friendlyName: String?
    public var ipAddress: String?
    public var processServerId: String?
    public var port: String?
    public var runAsAccountId: String?

        enum CodingKeys: String, CodingKey {case friendlyName = "friendlyName"
        case ipAddress = "ipAddress"
        case processServerId = "processServerId"
        case port = "port"
        case runAsAccountId = "runAsAccountId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.ipAddress) {
        self.ipAddress = try container.decode(String?.self, forKey: .ipAddress)
    }
    if container.contains(.processServerId) {
        self.processServerId = try container.decode(String?.self, forKey: .processServerId)
    }
    if container.contains(.port) {
        self.port = try container.decode(String?.self, forKey: .port)
    }
    if container.contains(.runAsAccountId) {
        self.runAsAccountId = try container.decode(String?.self, forKey: .runAsAccountId)
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
    if self.friendlyName != nil {try container.encode(self.friendlyName, forKey: .friendlyName)}
    if self.ipAddress != nil {try container.encode(self.ipAddress, forKey: .ipAddress)}
    if self.processServerId != nil {try container.encode(self.processServerId, forKey: .processServerId)}
    if self.port != nil {try container.encode(self.port, forKey: .port)}
    if self.runAsAccountId != nil {try container.encode(self.runAsAccountId, forKey: .runAsAccountId)}
  }
}

extension DataFactory {
  public static func createAddVCenterRequestPropertiesProtocol() -> AddVCenterRequestPropertiesProtocol {
    return AddVCenterRequestPropertiesData()
  }
}
