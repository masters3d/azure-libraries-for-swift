// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct ErrorData : ErrorProtocol {
    public var code: String
    public var message: String
    public var exceptionDetails: ErrorExceptionDetailsProtocol?

    enum CodingKeys: String, CodingKey {
        case code = "Code"
        case message = "Message"
        case exceptionDetails = "ExceptionDetails"
    }

  public init(code: String, message: String)  {
    self.code = code
    self.message = message
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    code = try container.decode(String.self, forKey: .code)
    message = try container.decode(String.self, forKey: .message)
    if container.contains(.exceptionDetails) {
        exceptionDetails = try container.decode(ErrorExceptionDetailsData?.self, forKey: .exceptionDetails)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(code, forKey: .code)
    try container.encode(message, forKey: .message)
    if self.exceptionDetails != nil {try container.encode(exceptionDetails as! ErrorExceptionDetailsData?, forKey: .exceptionDetails)}
  }
}

extension DataFactory {
  public static func createErrorProtocol(code: String, message: String) -> ErrorProtocol {
    return ErrorData(code: code, message: message)
  }
}
