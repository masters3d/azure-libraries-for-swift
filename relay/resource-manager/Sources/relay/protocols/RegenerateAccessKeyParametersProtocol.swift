// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RegenerateAccessKeyParametersProtocol is parameters supplied to the regenerate authorization rule operation,
// specifies which key neeeds to be reset.
public protocol RegenerateAccessKeyParametersProtocol : Codable {
     var keyType: KeyTypeEnum { get set }
     var key: String? { get set }
}
