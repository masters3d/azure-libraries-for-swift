// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct OperationStatusJobsExtendedInfoData : OperationStatusJobsExtendedInfoProtocol, OperationStatusExtendedInfoProtocol {
    public var jobIds: [String]?
    public var failedJobsError: [String:String]?

        enum CodingKeys: String, CodingKey {case jobIds = "jobIds"
        case failedJobsError = "failedJobsError"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.jobIds) {
        self.jobIds = try container.decode([String]?.self, forKey: .jobIds)
    }
    if container.contains(.failedJobsError) {
        self.failedJobsError = try container.decode([String:String]?.self, forKey: .failedJobsError)
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
    if self.jobIds != nil { try container.encode(self.jobIds as! [String]?, forKey: .jobIds) }
    if self.failedJobsError != nil { try container.encode(self.failedJobsError, forKey: .failedJobsError) }
  }
}

extension DataFactory {
  public static func createOperationStatusJobsExtendedInfoProtocol() -> OperationStatusJobsExtendedInfoProtocol {
    return OperationStatusJobsExtendedInfoData()
  }
}
