// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct StreamInputPropertiesData : StreamInputPropertiesProtocol, InputPropertiesProtocol {
    public var serialization: SerializationProtocol?
    public var diagnostics: DiagnosticsProtocol?
    public var etag: String?
    public var datasource: StreamInputDataSourceProtocol?

        enum CodingKeys: String, CodingKey {case serialization = "serialization"
        case diagnostics = "diagnostics"
        case etag = "etag"
        case datasource = "datasource"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.serialization) {
        self.serialization = try container.decode(SerializationData?.self, forKey: .serialization)
    }
    if container.contains(.diagnostics) {
        self.diagnostics = try container.decode(DiagnosticsData?.self, forKey: .diagnostics)
    }
    if container.contains(.etag) {
        self.etag = try container.decode(String?.self, forKey: .etag)
    }
    if container.contains(.datasource) {
        self.datasource = try container.decode(StreamInputDataSourceData?.self, forKey: .datasource)
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
    if self.serialization != nil {try container.encode(self.serialization as! SerializationData?, forKey: .serialization)}
    if self.diagnostics != nil {try container.encode(self.diagnostics as! DiagnosticsData?, forKey: .diagnostics)}
    if self.etag != nil {try container.encode(self.etag, forKey: .etag)}
    if self.datasource != nil {try container.encode(self.datasource as! StreamInputDataSourceData?, forKey: .datasource)}
  }
}

extension DataFactory {
  public static func createStreamInputPropertiesProtocol() -> StreamInputPropertiesProtocol {
    return StreamInputPropertiesData()
  }
}
