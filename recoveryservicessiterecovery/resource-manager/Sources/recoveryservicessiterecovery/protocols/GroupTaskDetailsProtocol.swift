// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// GroupTaskDetailsProtocol is this class represents the group task details when parent child relationship exists in
// the drill down.
public protocol GroupTaskDetailsProtocol : Codable {
     var childTasks: [ASRTaskProtocol?]? { get set }
}
