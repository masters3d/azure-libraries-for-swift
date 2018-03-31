// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobActionData : JobActionProtocol {
    public var type: JobActionTypeEnum?
    public var request: HttpRequestProtocol?
    public var queueMessage: StorageQueueMessageProtocol?
    public var serviceBusQueueMessage: ServiceBusQueueMessageProtocol?
    public var serviceBusTopicMessage: ServiceBusTopicMessageProtocol?
    public var retryPolicy: RetryPolicyProtocol?
    public var errorAction: JobErrorActionProtocol?

        enum CodingKeys: String, CodingKey {case type = "type"
        case request = "request"
        case queueMessage = "queueMessage"
        case serviceBusQueueMessage = "serviceBusQueueMessage"
        case serviceBusTopicMessage = "serviceBusTopicMessage"
        case retryPolicy = "retryPolicy"
        case errorAction = "errorAction"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.type) {
        self.type = try container.decode(JobActionTypeEnum?.self, forKey: .type)
    }
    if container.contains(.request) {
        self.request = try container.decode(HttpRequestData?.self, forKey: .request)
    }
    if container.contains(.queueMessage) {
        self.queueMessage = try container.decode(StorageQueueMessageData?.self, forKey: .queueMessage)
    }
    if container.contains(.serviceBusQueueMessage) {
        self.serviceBusQueueMessage = try container.decode(ServiceBusQueueMessageData?.self, forKey: .serviceBusQueueMessage)
    }
    if container.contains(.serviceBusTopicMessage) {
        self.serviceBusTopicMessage = try container.decode(ServiceBusTopicMessageData?.self, forKey: .serviceBusTopicMessage)
    }
    if container.contains(.retryPolicy) {
        self.retryPolicy = try container.decode(RetryPolicyData?.self, forKey: .retryPolicy)
    }
    if container.contains(.errorAction) {
        self.errorAction = try container.decode(JobErrorActionData?.self, forKey: .errorAction)
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
    if self.type != nil { try container.encode(self.type, forKey: .type) }
    if self.request != nil { try container.encode(self.request as! HttpRequestData?, forKey: .request) }
    if self.queueMessage != nil { try container.encode(self.queueMessage as! StorageQueueMessageData?, forKey: .queueMessage) }
    if self.serviceBusQueueMessage != nil { try container.encode(self.serviceBusQueueMessage as! ServiceBusQueueMessageData?, forKey: .serviceBusQueueMessage) }
    if self.serviceBusTopicMessage != nil { try container.encode(self.serviceBusTopicMessage as! ServiceBusTopicMessageData?, forKey: .serviceBusTopicMessage) }
    if self.retryPolicy != nil { try container.encode(self.retryPolicy as! RetryPolicyData?, forKey: .retryPolicy) }
    if self.errorAction != nil { try container.encode(self.errorAction as! JobErrorActionData?, forKey: .errorAction) }
  }
}

extension DataFactory {
  public static func createJobActionProtocol() -> JobActionProtocol {
    return JobActionData()
  }
}
