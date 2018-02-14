// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DataLakeStoreAccountProtocol is data Lake Store account information.
public protocol DataLakeStoreAccountProtocol : ResourceProtocol {
     var identity: EncryptionIdentityProtocol? { get set }
     var properties: DataLakeStoreAccountPropertiesProtocol? { get set }
}
