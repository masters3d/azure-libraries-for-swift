// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GatewayProfileData : GatewayProfileProtocol {
    public var dataPlaneServiceBaseAddress: String?
    public var gatewayId: String?
    public var environment: String?
    public var upgradeManifestUrl: String?
    public var messagingNamespace: String?
    public var messagingAccount: String?
    public var messagingKey: String?
    public var requestQueue: String?
    public var responseTopic: String?
    public var statusBlobSignature: String?

        enum CodingKeys: String, CodingKey {case dataPlaneServiceBaseAddress = "dataPlaneServiceBaseAddress"
        case gatewayId = "gatewayId"
        case environment = "environment"
        case upgradeManifestUrl = "upgradeManifestUrl"
        case messagingNamespace = "messagingNamespace"
        case messagingAccount = "messagingAccount"
        case messagingKey = "messagingKey"
        case requestQueue = "requestQueue"
        case responseTopic = "responseTopic"
        case statusBlobSignature = "statusBlobSignature"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.dataPlaneServiceBaseAddress) {
        self.dataPlaneServiceBaseAddress = try container.decode(String?.self, forKey: .dataPlaneServiceBaseAddress)
    }
    if container.contains(.gatewayId) {
        self.gatewayId = try container.decode(String?.self, forKey: .gatewayId)
    }
    if container.contains(.environment) {
        self.environment = try container.decode(String?.self, forKey: .environment)
    }
    if container.contains(.upgradeManifestUrl) {
        self.upgradeManifestUrl = try container.decode(String?.self, forKey: .upgradeManifestUrl)
    }
    if container.contains(.messagingNamespace) {
        self.messagingNamespace = try container.decode(String?.self, forKey: .messagingNamespace)
    }
    if container.contains(.messagingAccount) {
        self.messagingAccount = try container.decode(String?.self, forKey: .messagingAccount)
    }
    if container.contains(.messagingKey) {
        self.messagingKey = try container.decode(String?.self, forKey: .messagingKey)
    }
    if container.contains(.requestQueue) {
        self.requestQueue = try container.decode(String?.self, forKey: .requestQueue)
    }
    if container.contains(.responseTopic) {
        self.responseTopic = try container.decode(String?.self, forKey: .responseTopic)
    }
    if container.contains(.statusBlobSignature) {
        self.statusBlobSignature = try container.decode(String?.self, forKey: .statusBlobSignature)
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
    if self.dataPlaneServiceBaseAddress != nil {try container.encode(self.dataPlaneServiceBaseAddress, forKey: .dataPlaneServiceBaseAddress)}
    if self.gatewayId != nil {try container.encode(self.gatewayId, forKey: .gatewayId)}
    if self.environment != nil {try container.encode(self.environment, forKey: .environment)}
    if self.upgradeManifestUrl != nil {try container.encode(self.upgradeManifestUrl, forKey: .upgradeManifestUrl)}
    if self.messagingNamespace != nil {try container.encode(self.messagingNamespace, forKey: .messagingNamespace)}
    if self.messagingAccount != nil {try container.encode(self.messagingAccount, forKey: .messagingAccount)}
    if self.messagingKey != nil {try container.encode(self.messagingKey, forKey: .messagingKey)}
    if self.requestQueue != nil {try container.encode(self.requestQueue, forKey: .requestQueue)}
    if self.responseTopic != nil {try container.encode(self.responseTopic, forKey: .responseTopic)}
    if self.statusBlobSignature != nil {try container.encode(self.statusBlobSignature, forKey: .statusBlobSignature)}
  }
}

extension DataFactory {
  public static func createGatewayProfileProtocol() -> GatewayProfileProtocol {
    return GatewayProfileData()
  }
}
