// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewayPropertiesFormatData : ApplicationGatewayPropertiesFormatProtocol {
    public var sku: ApplicationGatewaySkuProtocol?
    public var sslPolicy: ApplicationGatewaySslPolicyProtocol?
    public var operationalState: ApplicationGatewayOperationalStateEnum?
    public var gatewayIPConfigurations: [ApplicationGatewayIPConfigurationProtocol?]?
    public var authenticationCertificates: [ApplicationGatewayAuthenticationCertificateProtocol?]?
    public var sslCertificates: [ApplicationGatewaySslCertificateProtocol?]?
    public var frontendIPConfigurations: [ApplicationGatewayFrontendIPConfigurationProtocol?]?
    public var frontendPorts: [ApplicationGatewayFrontendPortProtocol?]?
    public var probes: [ApplicationGatewayProbeProtocol?]?
    public var backendAddressPools: [ApplicationGatewayBackendAddressPoolProtocol?]?
    public var backendHttpSettingsCollection: [ApplicationGatewayBackendHttpSettingsProtocol?]?
    public var httpListeners: [ApplicationGatewayHttpListenerProtocol?]?
    public var urlPathMaps: [ApplicationGatewayUrlPathMapProtocol?]?
    public var requestRoutingRules: [ApplicationGatewayRequestRoutingRuleProtocol?]?
    public var redirectConfigurations: [ApplicationGatewayRedirectConfigurationProtocol?]?
    public var webApplicationFirewallConfiguration: ApplicationGatewayWebApplicationFirewallConfigurationProtocol?
    public var enableHttp2: Bool?
    public var resourceGuid: String?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case sku = "sku"
        case sslPolicy = "sslPolicy"
        case operationalState = "operationalState"
        case gatewayIPConfigurations = "gatewayIPConfigurations"
        case authenticationCertificates = "authenticationCertificates"
        case sslCertificates = "sslCertificates"
        case frontendIPConfigurations = "frontendIPConfigurations"
        case frontendPorts = "frontendPorts"
        case probes = "probes"
        case backendAddressPools = "backendAddressPools"
        case backendHttpSettingsCollection = "backendHttpSettingsCollection"
        case httpListeners = "httpListeners"
        case urlPathMaps = "urlPathMaps"
        case requestRoutingRules = "requestRoutingRules"
        case redirectConfigurations = "redirectConfigurations"
        case webApplicationFirewallConfiguration = "webApplicationFirewallConfiguration"
        case enableHttp2 = "enableHttp2"
        case resourceGuid = "resourceGuid"
        case provisioningState = "provisioningState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sku) {
        self.sku = try container.decode(ApplicationGatewaySkuData?.self, forKey: .sku)
    }
    if container.contains(.sslPolicy) {
        self.sslPolicy = try container.decode(ApplicationGatewaySslPolicyData?.self, forKey: .sslPolicy)
    }
    if container.contains(.operationalState) {
        self.operationalState = try container.decode(ApplicationGatewayOperationalStateEnum?.self, forKey: .operationalState)
    }
    if container.contains(.gatewayIPConfigurations) {
        self.gatewayIPConfigurations = try container.decode([ApplicationGatewayIPConfigurationData?]?.self, forKey: .gatewayIPConfigurations)
    }
    if container.contains(.authenticationCertificates) {
        self.authenticationCertificates = try container.decode([ApplicationGatewayAuthenticationCertificateData?]?.self, forKey: .authenticationCertificates)
    }
    if container.contains(.sslCertificates) {
        self.sslCertificates = try container.decode([ApplicationGatewaySslCertificateData?]?.self, forKey: .sslCertificates)
    }
    if container.contains(.frontendIPConfigurations) {
        self.frontendIPConfigurations = try container.decode([ApplicationGatewayFrontendIPConfigurationData?]?.self, forKey: .frontendIPConfigurations)
    }
    if container.contains(.frontendPorts) {
        self.frontendPorts = try container.decode([ApplicationGatewayFrontendPortData?]?.self, forKey: .frontendPorts)
    }
    if container.contains(.probes) {
        self.probes = try container.decode([ApplicationGatewayProbeData?]?.self, forKey: .probes)
    }
    if container.contains(.backendAddressPools) {
        self.backendAddressPools = try container.decode([ApplicationGatewayBackendAddressPoolData?]?.self, forKey: .backendAddressPools)
    }
    if container.contains(.backendHttpSettingsCollection) {
        self.backendHttpSettingsCollection = try container.decode([ApplicationGatewayBackendHttpSettingsData?]?.self, forKey: .backendHttpSettingsCollection)
    }
    if container.contains(.httpListeners) {
        self.httpListeners = try container.decode([ApplicationGatewayHttpListenerData?]?.self, forKey: .httpListeners)
    }
    if container.contains(.urlPathMaps) {
        self.urlPathMaps = try container.decode([ApplicationGatewayUrlPathMapData?]?.self, forKey: .urlPathMaps)
    }
    if container.contains(.requestRoutingRules) {
        self.requestRoutingRules = try container.decode([ApplicationGatewayRequestRoutingRuleData?]?.self, forKey: .requestRoutingRules)
    }
    if container.contains(.redirectConfigurations) {
        self.redirectConfigurations = try container.decode([ApplicationGatewayRedirectConfigurationData?]?.self, forKey: .redirectConfigurations)
    }
    if container.contains(.webApplicationFirewallConfiguration) {
        self.webApplicationFirewallConfiguration = try container.decode(ApplicationGatewayWebApplicationFirewallConfigurationData?.self, forKey: .webApplicationFirewallConfiguration)
    }
    if container.contains(.enableHttp2) {
        self.enableHttp2 = try container.decode(Bool?.self, forKey: .enableHttp2)
    }
    if container.contains(.resourceGuid) {
        self.resourceGuid = try container.decode(String?.self, forKey: .resourceGuid)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
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
    if self.sku != nil {try container.encode(self.sku as! ApplicationGatewaySkuData?, forKey: .sku)}
    if self.sslPolicy != nil {try container.encode(self.sslPolicy as! ApplicationGatewaySslPolicyData?, forKey: .sslPolicy)}
    if self.operationalState != nil {try container.encode(self.operationalState, forKey: .operationalState)}
    if self.gatewayIPConfigurations != nil {try container.encode(self.gatewayIPConfigurations as! [ApplicationGatewayIPConfigurationData?]?, forKey: .gatewayIPConfigurations)}
    if self.authenticationCertificates != nil {try container.encode(self.authenticationCertificates as! [ApplicationGatewayAuthenticationCertificateData?]?, forKey: .authenticationCertificates)}
    if self.sslCertificates != nil {try container.encode(self.sslCertificates as! [ApplicationGatewaySslCertificateData?]?, forKey: .sslCertificates)}
    if self.frontendIPConfigurations != nil {try container.encode(self.frontendIPConfigurations as! [ApplicationGatewayFrontendIPConfigurationData?]?, forKey: .frontendIPConfigurations)}
    if self.frontendPorts != nil {try container.encode(self.frontendPorts as! [ApplicationGatewayFrontendPortData?]?, forKey: .frontendPorts)}
    if self.probes != nil {try container.encode(self.probes as! [ApplicationGatewayProbeData?]?, forKey: .probes)}
    if self.backendAddressPools != nil {try container.encode(self.backendAddressPools as! [ApplicationGatewayBackendAddressPoolData?]?, forKey: .backendAddressPools)}
    if self.backendHttpSettingsCollection != nil {try container.encode(self.backendHttpSettingsCollection as! [ApplicationGatewayBackendHttpSettingsData?]?, forKey: .backendHttpSettingsCollection)}
    if self.httpListeners != nil {try container.encode(self.httpListeners as! [ApplicationGatewayHttpListenerData?]?, forKey: .httpListeners)}
    if self.urlPathMaps != nil {try container.encode(self.urlPathMaps as! [ApplicationGatewayUrlPathMapData?]?, forKey: .urlPathMaps)}
    if self.requestRoutingRules != nil {try container.encode(self.requestRoutingRules as! [ApplicationGatewayRequestRoutingRuleData?]?, forKey: .requestRoutingRules)}
    if self.redirectConfigurations != nil {try container.encode(self.redirectConfigurations as! [ApplicationGatewayRedirectConfigurationData?]?, forKey: .redirectConfigurations)}
    if self.webApplicationFirewallConfiguration != nil {try container.encode(self.webApplicationFirewallConfiguration as! ApplicationGatewayWebApplicationFirewallConfigurationData?, forKey: .webApplicationFirewallConfiguration)}
    if self.enableHttp2 != nil {try container.encode(self.enableHttp2, forKey: .enableHttp2)}
    if self.resourceGuid != nil {try container.encode(self.resourceGuid, forKey: .resourceGuid)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createApplicationGatewayPropertiesFormatProtocol() -> ApplicationGatewayPropertiesFormatProtocol {
    return ApplicationGatewayPropertiesFormatData()
  }
}
