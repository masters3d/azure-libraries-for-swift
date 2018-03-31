// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobStatusEventDetailsData : JobStatusEventDetailsProtocol, EventSpecificDetailsProtocol {
    public var jobId: String?
    public var jobFriendlyName: String?
    public var jobStatus: String?
    public var affectedObjectType: String?

        enum CodingKeys: String, CodingKey {case jobId = "jobId"
        case jobFriendlyName = "jobFriendlyName"
        case jobStatus = "jobStatus"
        case affectedObjectType = "affectedObjectType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.jobId) {
        self.jobId = try container.decode(String?.self, forKey: .jobId)
    }
    if container.contains(.jobFriendlyName) {
        self.jobFriendlyName = try container.decode(String?.self, forKey: .jobFriendlyName)
    }
    if container.contains(.jobStatus) {
        self.jobStatus = try container.decode(String?.self, forKey: .jobStatus)
    }
    if container.contains(.affectedObjectType) {
        self.affectedObjectType = try container.decode(String?.self, forKey: .affectedObjectType)
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
    if self.jobId != nil {try container.encode(self.jobId, forKey: .jobId)}
    if self.jobFriendlyName != nil {try container.encode(self.jobFriendlyName, forKey: .jobFriendlyName)}
    if self.jobStatus != nil {try container.encode(self.jobStatus, forKey: .jobStatus)}
    if self.affectedObjectType != nil {try container.encode(self.affectedObjectType, forKey: .affectedObjectType)}
  }
}

extension DataFactory {
  public static func createJobStatusEventDetailsProtocol() -> JobStatusEventDetailsProtocol {
    return JobStatusEventDetailsData()
  }
}
