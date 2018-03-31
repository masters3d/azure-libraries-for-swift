// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SolutionData : SolutionProtocol {
    public var id: Double?
    public var displayName: String?
    public var order: Double?
    public var description: String?
    public var type: SolutionTypeEnum?
    public var data: [[NameValuePairProtocol?]?]?
    public var metadata: [[NameValuePairProtocol?]?]?

        enum CodingKeys: String, CodingKey {case id = "id"
        case displayName = "displayName"
        case order = "order"
        case description = "description"
        case type = "type"
        case data = "data"
        case metadata = "metadata"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(Double?.self, forKey: .id)
    }
    if container.contains(.displayName) {
        self.displayName = try container.decode(String?.self, forKey: .displayName)
    }
    if container.contains(.order) {
        self.order = try container.decode(Double?.self, forKey: .order)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.type) {
        self.type = try container.decode(SolutionTypeEnum?.self, forKey: .type)
    }
    if container.contains(.data) {
        self.data = try container.decode([[NameValuePairData?]?]?.self, forKey: .data)
    }
    if container.contains(.metadata) {
        self.metadata = try container.decode([[NameValuePairData?]?]?.self, forKey: .metadata)
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
    if self.id != nil { try container.encode(self.id, forKey: .id) }
    if self.displayName != nil { try container.encode(self.displayName, forKey: .displayName) }
    if self.order != nil { try container.encode(self.order, forKey: .order) }
    if self.description != nil { try container.encode(self.description, forKey: .description) }
    if self.type != nil { try container.encode(self.type, forKey: .type) }
    if self.data != nil { try container.encode(self.data as! [[NameValuePairData?]?]?, forKey: .data) }
    if self.metadata != nil { try container.encode(self.metadata as! [[NameValuePairData?]?]?, forKey: .metadata) }
  }
}

extension DataFactory {
  public static func createSolutionProtocol() -> SolutionProtocol {
    return SolutionData()
  }
}
