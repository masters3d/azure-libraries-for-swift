// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct OperationResultData : OperationResultProtocol {
    public var status: String?
    public var statusCode: HttpStatusCodeEnum?
    public var error: OperationErrorProtocol?

        enum CodingKeys: String, CodingKey {case status = "status"
        case statusCode = "statusCode"
        case error = "error"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.status) {
        self.status = try container.decode(String?.self, forKey: .status)
    }
    if container.contains(.statusCode) {
        self.statusCode = try container.decode(HttpStatusCodeEnum?.self, forKey: .statusCode)
    }
    if container.contains(.error) {
        self.error = try container.decode(OperationErrorData?.self, forKey: .error)
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
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.statusCode != nil {try container.encode(self.statusCode, forKey: .statusCode)}
    if self.error != nil {try container.encode(self.error as! OperationErrorData?, forKey: .error)}
  }
}

extension DataFactory {
  public static func createOperationResultProtocol() -> OperationResultProtocol {
    return OperationResultData()
  }
}
