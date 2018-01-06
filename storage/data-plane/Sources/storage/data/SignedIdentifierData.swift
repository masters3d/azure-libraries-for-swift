// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct SignedIdentifierData : SignedIdentifierProtocol {
    public var id: String
    public var accessPolicy: AccessPolicyProtocol

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case accessPolicy = "AccessPolicy"
    }

  public init(id: String, accessPolicy: AccessPolicyProtocol)  {
    self.id = id
    self.accessPolicy = accessPolicy
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    id = try container.decode(String.self, forKey: .id)
    accessPolicy = try container.decode(AccessPolicyData.self, forKey: .accessPolicy)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(id, forKey: .id)
    try container.encode(accessPolicy as! AccessPolicyData, forKey: .accessPolicy)
  }
}

extension DataFactory {
  public static func createSignedIdentifierProtocol(id: String, accessPolicy: AccessPolicyProtocol) -> SignedIdentifierProtocol {
    return SignedIdentifierData(id: id, accessPolicy: accessPolicy)
  }
}