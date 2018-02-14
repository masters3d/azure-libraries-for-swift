// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct OperationWorkerResponseData : OperationWorkerResponseProtocol {
    public var statusCode: HttpStatusCodeEnum?
    public var headers: [String:[String]?]?

        enum CodingKeys: String, CodingKey {case statusCode = "statusCode"
        case headers = "headers"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.statusCode) {
        self.statusCode = try container.decode(HttpStatusCodeEnum?.self, forKey: .statusCode)
    }
    if container.contains(.headers) {
        self.headers = try container.decode([String:[String]?]?.self, forKey: .headers)
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
    if self.statusCode != nil {try container.encode(self.statusCode, forKey: .statusCode)}
    if self.headers != nil {try container.encode(self.headers, forKey: .headers)}
  }
}

extension DataFactory {
  public static func createOperationWorkerResponseProtocol() -> OperationWorkerResponseProtocol {
    return OperationWorkerResponseData()
  }
}
