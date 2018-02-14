// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AnalysisServicesServerPropertiesData : AnalysisServicesServerPropertiesProtocol, AnalysisServicesServerMutablePropertiesProtocol {
    public var asAdministrators: ServerAdministratorsProtocol?
    public var backupBlobContainerUri: String?
    public var gatewayDetails: GatewayDetailsProtocol?
    public var ipV4FirewallSettings: IPv4FirewallSettingsProtocol?
    public var querypoolConnectionMode: ConnectionModeEnum?
    public var state: StateEnum?
    public var provisioningState: ProvisioningStateEnum?
    public var serverFullName: String?

        enum CodingKeys: String, CodingKey {case asAdministrators = "asAdministrators"
        case backupBlobContainerUri = "backupBlobContainerUri"
        case gatewayDetails = "gatewayDetails"
        case ipV4FirewallSettings = "ipV4FirewallSettings"
        case querypoolConnectionMode = "querypoolConnectionMode"
        case state = "state"
        case provisioningState = "provisioningState"
        case serverFullName = "serverFullName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.asAdministrators) {
        self.asAdministrators = try container.decode(ServerAdministratorsData?.self, forKey: .asAdministrators)
    }
    if container.contains(.backupBlobContainerUri) {
        self.backupBlobContainerUri = try container.decode(String?.self, forKey: .backupBlobContainerUri)
    }
    if container.contains(.gatewayDetails) {
        self.gatewayDetails = try container.decode(GatewayDetailsData?.self, forKey: .gatewayDetails)
    }
    if container.contains(.ipV4FirewallSettings) {
        self.ipV4FirewallSettings = try container.decode(IPv4FirewallSettingsData?.self, forKey: .ipV4FirewallSettings)
    }
    if container.contains(.querypoolConnectionMode) {
        self.querypoolConnectionMode = try container.decode(ConnectionModeEnum?.self, forKey: .querypoolConnectionMode)
    }
    if container.contains(.state) {
        self.state = try container.decode(StateEnum?.self, forKey: .state)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(ProvisioningStateEnum?.self, forKey: .provisioningState)
    }
    if container.contains(.serverFullName) {
        self.serverFullName = try container.decode(String?.self, forKey: .serverFullName)
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
    if self.asAdministrators != nil {try container.encode(self.asAdministrators as! ServerAdministratorsData?, forKey: .asAdministrators)}
    if self.backupBlobContainerUri != nil {try container.encode(self.backupBlobContainerUri, forKey: .backupBlobContainerUri)}
    if self.gatewayDetails != nil {try container.encode(self.gatewayDetails as! GatewayDetailsData?, forKey: .gatewayDetails)}
    if self.ipV4FirewallSettings != nil {try container.encode(self.ipV4FirewallSettings as! IPv4FirewallSettingsData?, forKey: .ipV4FirewallSettings)}
    if self.querypoolConnectionMode != nil {try container.encode(self.querypoolConnectionMode, forKey: .querypoolConnectionMode)}
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.serverFullName != nil {try container.encode(self.serverFullName, forKey: .serverFullName)}
  }
}

extension DataFactory {
  public static func createAnalysisServicesServerPropertiesProtocol() -> AnalysisServicesServerPropertiesProtocol {
    return AnalysisServicesServerPropertiesData()
  }
}
