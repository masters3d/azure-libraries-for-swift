// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WorkerPoolData : WorkerPoolProtocol {
    public var workerSizeId: Int32?
    public var computeMode: ComputeModeOptionsEnum?
    public var workerSize: String?
    public var workerCount: Int32?
    public var instanceNames: [String]?

        enum CodingKeys: String, CodingKey {case workerSizeId = "workerSizeId"
        case computeMode = "computeMode"
        case workerSize = "workerSize"
        case workerCount = "workerCount"
        case instanceNames = "instanceNames"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.workerSizeId) {
        self.workerSizeId = try container.decode(Int32?.self, forKey: .workerSizeId)
    }
    if container.contains(.computeMode) {
        self.computeMode = try container.decode(ComputeModeOptionsEnum?.self, forKey: .computeMode)
    }
    if container.contains(.workerSize) {
        self.workerSize = try container.decode(String?.self, forKey: .workerSize)
    }
    if container.contains(.workerCount) {
        self.workerCount = try container.decode(Int32?.self, forKey: .workerCount)
    }
    if container.contains(.instanceNames) {
        self.instanceNames = try container.decode([String]?.self, forKey: .instanceNames)
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
    if self.workerSizeId != nil { try container.encode(self.workerSizeId, forKey: .workerSizeId) }
    if self.computeMode != nil { try container.encode(self.computeMode, forKey: .computeMode) }
    if self.workerSize != nil { try container.encode(self.workerSize, forKey: .workerSize) }
    if self.workerCount != nil { try container.encode(self.workerCount, forKey: .workerCount) }
    if self.instanceNames != nil { try container.encode(self.instanceNames as! [String]?, forKey: .instanceNames) }
  }
}

extension DataFactory {
  public static func createWorkerPoolProtocol() -> WorkerPoolProtocol {
    return WorkerPoolData()
  }
}
