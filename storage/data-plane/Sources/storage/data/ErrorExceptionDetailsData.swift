// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct ErrorExceptionDetailsData : ErrorExceptionDetailsProtocol {
    public var exceptionMessage: String?
    public var stackTrace: String?

    enum CodingKeys: String, CodingKey {
        case exceptionMessage = "ExceptionMessage"
        case stackTrace = "StackTrace"
    }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.exceptionMessage) {
        exceptionMessage = try container.decode(String.self, forKey: .exceptionMessage)
    }
    if container.contains(.stackTrace) {
        stackTrace = try container.decode(String.self, forKey: .stackTrace)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.exceptionMessage != nil { try container.encode(exceptionMessage, forKey: .exceptionMessage) }
    if self.stackTrace != nil { try container.encode(stackTrace, forKey: .stackTrace) }
  }
}

extension DataFactory {
  public static func createErrorExceptionDetailsProtocol() -> ErrorExceptionDetailsProtocol {
    return ErrorExceptionDetailsData()
  }
}
