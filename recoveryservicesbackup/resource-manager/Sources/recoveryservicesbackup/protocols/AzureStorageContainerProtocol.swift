// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureStorageContainerProtocol is azure Storage Account workload-specific container.
public protocol AzureStorageContainerProtocol : ProtectionContainerProtocol {
     var sourceResourceId: String? { get set }
     var storageAccountVersion: String? { get set }
     var resourceGroup: String? { get set }
     var protectedItemCount: Int64? { get set }
}
