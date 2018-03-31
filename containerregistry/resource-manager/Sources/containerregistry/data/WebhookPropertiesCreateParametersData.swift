// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WebhookPropertiesCreateParametersData : WebhookPropertiesCreateParametersProtocol {
    public var serviceUri: String
    public var customHeaders: [String:String]?
    public var status: WebhookStatusEnum?
    public var scope: String?
    public var actions: [WebhookActionEnum]

        enum CodingKeys: String, CodingKey {case serviceUri = "serviceUri"
        case customHeaders = "customHeaders"
        case status = "status"
        case scope = "scope"
        case actions = "actions"
        }

  public init(serviceUri: String, actions: [WebhookActionEnum]) {
    self.serviceUri = serviceUri
    self.actions = actions
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.serviceUri = try container.decode(String.self, forKey: .serviceUri)
    if container.contains(.customHeaders) {
        self.customHeaders = try container.decode([String:String]?.self, forKey: .customHeaders)
    }
    if container.contains(.status) {
        self.status = try container.decode(WebhookStatusEnum?.self, forKey: .status)
    }
    if container.contains(.scope) {
        self.scope = try container.decode(String?.self, forKey: .scope)
    }
    self.actions = try container.decode([WebhookActionEnum].self, forKey: .actions)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.serviceUri, forKey: .serviceUri)
    if self.customHeaders != nil { try container.encode(self.customHeaders, forKey: .customHeaders) }
    if self.status != nil { try container.encode(self.status, forKey: .status) }
    if self.scope != nil { try container.encode(self.scope, forKey: .scope) }
    try container.encode(self.actions as! [WebhookActionEnum], forKey: .actions)
  }
}

extension DataFactory {
  public static func createWebhookPropertiesCreateParametersProtocol(serviceUri: String, actions: [WebhookActionEnum]) -> WebhookPropertiesCreateParametersProtocol {
    return WebhookPropertiesCreateParametersData(serviceUri: serviceUri, actions: actions)
  }
}
