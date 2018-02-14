// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FabricReplicationGroupTaskDetailsData : FabricReplicationGroupTaskDetailsProtocol, TaskTypeDetailsProtocol {
    public var skippedReason: String?
    public var skippedReasonString: String?
    public var jobTask: JobEntityProtocol?

        enum CodingKeys: String, CodingKey {case skippedReason = "skippedReason"
        case skippedReasonString = "skippedReasonString"
        case jobTask = "jobTask"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.skippedReason) {
        self.skippedReason = try container.decode(String?.self, forKey: .skippedReason)
    }
    if container.contains(.skippedReasonString) {
        self.skippedReasonString = try container.decode(String?.self, forKey: .skippedReasonString)
    }
    if container.contains(.jobTask) {
        self.jobTask = try container.decode(JobEntityData?.self, forKey: .jobTask)
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
    if self.skippedReason != nil {try container.encode(self.skippedReason, forKey: .skippedReason)}
    if self.skippedReasonString != nil {try container.encode(self.skippedReasonString, forKey: .skippedReasonString)}
    if self.jobTask != nil {try container.encode(self.jobTask as! JobEntityData?, forKey: .jobTask)}
  }
}

extension DataFactory {
  public static func createFabricReplicationGroupTaskDetailsProtocol() -> FabricReplicationGroupTaskDetailsProtocol {
    return FabricReplicationGroupTaskDetailsData()
  }
}
