// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Certificate is the a client for issuing REST requests to the Azure Batch service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Certificate {
    public static func Add(certificate: CertificateAddParameterProtocol) -> CertificateAdd {
        return AddCommand(certificate: certificate)
    }
    public static func CancelDeletion(thumbprintAlgorithm: String, thumbprint: String) -> CertificateCancelDeletion {
        return CancelDeletionCommand(thumbprintAlgorithm: thumbprintAlgorithm, thumbprint: thumbprint)
    }
    public static func Delete(thumbprintAlgorithm: String, thumbprint: String) -> CertificateDelete {
        return DeleteCommand(thumbprintAlgorithm: thumbprintAlgorithm, thumbprint: thumbprint)
    }
    public static func Get(thumbprintAlgorithm: String, thumbprint: String) -> CertificateGet {
        return GetCommand(thumbprintAlgorithm: thumbprintAlgorithm, thumbprint: thumbprint)
    }
    public static func List() -> CertificateList {
        return ListCommand()
    }
}
}
