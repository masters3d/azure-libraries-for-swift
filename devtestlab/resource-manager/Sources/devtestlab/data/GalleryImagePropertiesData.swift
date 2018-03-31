// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GalleryImagePropertiesData : GalleryImagePropertiesProtocol {
    public var author: String?
    public var createdDate: Date?
    public var description: String?
    public var imageReference: GalleryImageReferenceProtocol?
    public var icon: String?
    public var enabled: Bool?

        enum CodingKeys: String, CodingKey {case author = "author"
        case createdDate = "createdDate"
        case description = "description"
        case imageReference = "imageReference"
        case icon = "icon"
        case enabled = "enabled"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.author) {
        self.author = try container.decode(String?.self, forKey: .author)
    }
    if container.contains(.createdDate) {
        self.createdDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdDate)), format: .dateTime)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.imageReference) {
        self.imageReference = try container.decode(GalleryImageReferenceData?.self, forKey: .imageReference)
    }
    if container.contains(.icon) {
        self.icon = try container.decode(String?.self, forKey: .icon)
    }
    if container.contains(.enabled) {
        self.enabled = try container.decode(Bool?.self, forKey: .enabled)
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
    if self.author != nil { try container.encode(self.author, forKey: .author) }
    if self.createdDate != nil {
        try container.encode(DateConverter.toString(date: self.createdDate!, format: .dateTime), forKey: .createdDate)
    }
    if self.description != nil { try container.encode(self.description, forKey: .description) }
    if self.imageReference != nil { try container.encode(self.imageReference as! GalleryImageReferenceData?, forKey: .imageReference) }
    if self.icon != nil { try container.encode(self.icon, forKey: .icon) }
    if self.enabled != nil { try container.encode(self.enabled, forKey: .enabled) }
  }
}

extension DataFactory {
  public static func createGalleryImagePropertiesProtocol() -> GalleryImagePropertiesProtocol {
    return GalleryImagePropertiesData()
  }
}
