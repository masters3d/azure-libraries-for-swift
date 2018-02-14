// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobSchedulePatchParameterData : JobSchedulePatchParameterProtocol {
    public var schedule: ScheduleProtocol?
    public var jobSpecification: JobSpecificationProtocol?
    public var metadata: [MetadataItemProtocol?]?

        enum CodingKeys: String, CodingKey {case schedule = "schedule"
        case jobSpecification = "jobSpecification"
        case metadata = "metadata"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.schedule) {
        self.schedule = try container.decode(ScheduleData?.self, forKey: .schedule)
    }
    if container.contains(.jobSpecification) {
        self.jobSpecification = try container.decode(JobSpecificationData?.self, forKey: .jobSpecification)
    }
    if container.contains(.metadata) {
        self.metadata = try container.decode([MetadataItemData?]?.self, forKey: .metadata)
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
    if self.schedule != nil {try container.encode(self.schedule as! ScheduleData?, forKey: .schedule)}
    if self.jobSpecification != nil {try container.encode(self.jobSpecification as! JobSpecificationData?, forKey: .jobSpecification)}
    if self.metadata != nil {try container.encode(self.metadata as! [MetadataItemData?]?, forKey: .metadata)}
  }
}

extension DataFactory {
  public static func createJobSchedulePatchParameterProtocol() -> JobSchedulePatchParameterProtocol {
    return JobSchedulePatchParameterData()
  }
}
