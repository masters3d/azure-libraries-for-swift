// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AnalysisDataData : AnalysisDataProtocol {
    public var source: String?
    public var detectorDefinition: DetectorDefinitionProtocol?
    public var metrics: [DiagnosticMetricSetProtocol?]?
    public var data: [[NameValuePairProtocol?]?]?
    public var detectorMetaData: ResponseMetaDataProtocol?

        enum CodingKeys: String, CodingKey {case source = "source"
        case detectorDefinition = "detectorDefinition"
        case metrics = "metrics"
        case data = "data"
        case detectorMetaData = "detectorMetaData"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.source) {
        self.source = try container.decode(String?.self, forKey: .source)
    }
    if container.contains(.detectorDefinition) {
        self.detectorDefinition = try container.decode(DetectorDefinitionData?.self, forKey: .detectorDefinition)
    }
    if container.contains(.metrics) {
        self.metrics = try container.decode([DiagnosticMetricSetData?]?.self, forKey: .metrics)
    }
    if container.contains(.data) {
        self.data = try container.decode([[NameValuePairData?]?]?.self, forKey: .data)
    }
    if container.contains(.detectorMetaData) {
        self.detectorMetaData = try container.decode(ResponseMetaDataData?.self, forKey: .detectorMetaData)
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
    if self.source != nil { try container.encode(self.source, forKey: .source) }
    if self.detectorDefinition != nil { try container.encode(self.detectorDefinition as! DetectorDefinitionData?, forKey: .detectorDefinition) }
    if self.metrics != nil { try container.encode(self.metrics as! [DiagnosticMetricSetData?]?, forKey: .metrics) }
    if self.data != nil { try container.encode(self.data as! [[NameValuePairData?]?]?, forKey: .data) }
    if self.detectorMetaData != nil { try container.encode(self.detectorMetaData as! ResponseMetaDataData?, forKey: .detectorMetaData) }
  }
}

extension DataFactory {
  public static func createAnalysisDataProtocol() -> AnalysisDataProtocol {
    return AnalysisDataData()
  }
}
