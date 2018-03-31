// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TriggeredJobHistoryPropertiesData : TriggeredJobHistoryPropertiesProtocol {
    public var triggeredJobRuns: [TriggeredJobRunProtocol?]?

        enum CodingKeys: String, CodingKey {case triggeredJobRuns = "triggeredJobRuns"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.triggeredJobRuns) {
        self.triggeredJobRuns = try container.decode([TriggeredJobRunData?]?.self, forKey: .triggeredJobRuns)
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
    if self.triggeredJobRuns != nil {try container.encode(self.triggeredJobRuns as! [TriggeredJobRunData?]?, forKey: .triggeredJobRuns)}
  }
}

extension DataFactory {
  public static func createTriggeredJobHistoryPropertiesProtocol() -> TriggeredJobHistoryPropertiesProtocol {
    return TriggeredJobHistoryPropertiesData()
  }
}
