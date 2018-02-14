// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobCreateParametersData : JobCreateParametersProtocol {
    public var properties: JobCreatePropertiesProtocol
    public var name: String?
    public var location: String?
    public var tags: [String:String]?

        enum CodingKeys: String, CodingKey {case properties = "properties"
        case name = "name"
        case location = "location"
        case tags = "tags"
        }

  public init(properties: JobCreatePropertiesProtocol)  {
    self.properties = properties
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.properties = try container.decode(JobCreatePropertiesData.self, forKey: .properties)
    if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.location) {
        self.location = try container.decode(String?.self, forKey: .location)
    }
    if container.contains(.tags) {
        self.tags = try container.decode([String:String]?.self, forKey: .tags)
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
    try container.encode(self.properties as! JobCreatePropertiesData, forKey: .properties)
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.location != nil {try container.encode(self.location, forKey: .location)}
    if self.tags != nil {try container.encode(self.tags, forKey: .tags)}
  }
}

extension DataFactory {
  public static func createJobCreateParametersProtocol(properties: JobCreatePropertiesProtocol) -> JobCreateParametersProtocol {
    return JobCreateParametersData(properties: properties)
  }
}
