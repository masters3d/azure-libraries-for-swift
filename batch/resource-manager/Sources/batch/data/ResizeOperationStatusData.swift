// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ResizeOperationStatusData : ResizeOperationStatusProtocol {
    public var targetDedicatedNodes: Int32?
    public var targetLowPriorityNodes: Int32?
    public var resizeTimeout: String?
    public var nodeDeallocationOption: ComputeNodeDeallocationOptionEnum?
    public var startTime: Date?
    public var errors: [ResizeErrorProtocol?]?

        enum CodingKeys: String, CodingKey {case targetDedicatedNodes = "targetDedicatedNodes"
        case targetLowPriorityNodes = "targetLowPriorityNodes"
        case resizeTimeout = "resizeTimeout"
        case nodeDeallocationOption = "nodeDeallocationOption"
        case startTime = "startTime"
        case errors = "errors"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.targetDedicatedNodes) {
        self.targetDedicatedNodes = try container.decode(Int32?.self, forKey: .targetDedicatedNodes)
    }
    if container.contains(.targetLowPriorityNodes) {
        self.targetLowPriorityNodes = try container.decode(Int32?.self, forKey: .targetLowPriorityNodes)
    }
    if container.contains(.resizeTimeout) {
        self.resizeTimeout = try container.decode(String?.self, forKey: .resizeTimeout)
    }
    if container.contains(.nodeDeallocationOption) {
        self.nodeDeallocationOption = try container.decode(ComputeNodeDeallocationOptionEnum?.self, forKey: .nodeDeallocationOption)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.errors) {
        self.errors = try container.decode([ResizeErrorData?]?.self, forKey: .errors)
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
    if self.targetDedicatedNodes != nil {try container.encode(self.targetDedicatedNodes, forKey: .targetDedicatedNodes)}
    if self.targetLowPriorityNodes != nil {try container.encode(self.targetLowPriorityNodes, forKey: .targetLowPriorityNodes)}
    if self.resizeTimeout != nil {try container.encode(self.resizeTimeout, forKey: .resizeTimeout)}
    if self.nodeDeallocationOption != nil {try container.encode(self.nodeDeallocationOption, forKey: .nodeDeallocationOption)}
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.errors != nil {try container.encode(self.errors as! [ResizeErrorData?]?, forKey: .errors)}
  }
}

extension DataFactory {
  public static func createResizeOperationStatusProtocol() -> ResizeOperationStatusProtocol {
    return ResizeOperationStatusData()
  }
}
