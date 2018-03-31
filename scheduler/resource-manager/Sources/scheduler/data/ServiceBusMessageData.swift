// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ServiceBusMessageData : ServiceBusMessageProtocol {
    public var authentication: ServiceBusAuthenticationProtocol?
    public var brokeredMessageProperties: ServiceBusBrokeredMessagePropertiesProtocol?
    public var customMessageProperties: [String:String]?
    public var message: String?
    public var namespace: String?
    public var transportType: ServiceBusTransportTypeEnum?

        enum CodingKeys: String, CodingKey {case authentication = "authentication"
        case brokeredMessageProperties = "brokeredMessageProperties"
        case customMessageProperties = "customMessageProperties"
        case message = "message"
        case namespace = "namespace"
        case transportType = "transportType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.authentication) {
        self.authentication = try container.decode(ServiceBusAuthenticationData?.self, forKey: .authentication)
    }
    if container.contains(.brokeredMessageProperties) {
        self.brokeredMessageProperties = try container.decode(ServiceBusBrokeredMessagePropertiesData?.self, forKey: .brokeredMessageProperties)
    }
    if container.contains(.customMessageProperties) {
        self.customMessageProperties = try container.decode([String:String]?.self, forKey: .customMessageProperties)
    }
    if container.contains(.message) {
        self.message = try container.decode(String?.self, forKey: .message)
    }
    if container.contains(.namespace) {
        self.namespace = try container.decode(String?.self, forKey: .namespace)
    }
    if container.contains(.transportType) {
        self.transportType = try container.decode(ServiceBusTransportTypeEnum?.self, forKey: .transportType)
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
    if self.authentication != nil {try container.encode(self.authentication as! ServiceBusAuthenticationData?, forKey: .authentication)}
    if self.brokeredMessageProperties != nil {try container.encode(self.brokeredMessageProperties as! ServiceBusBrokeredMessagePropertiesData?, forKey: .brokeredMessageProperties)}
    if self.customMessageProperties != nil {try container.encode(self.customMessageProperties, forKey: .customMessageProperties)}
    if self.message != nil {try container.encode(self.message, forKey: .message)}
    if self.namespace != nil {try container.encode(self.namespace, forKey: .namespace)}
    if self.transportType != nil {try container.encode(self.transportType, forKey: .transportType)}
  }
}

extension DataFactory {
  public static func createServiceBusMessageProtocol() -> ServiceBusMessageProtocol {
    return ServiceBusMessageData()
  }
}
