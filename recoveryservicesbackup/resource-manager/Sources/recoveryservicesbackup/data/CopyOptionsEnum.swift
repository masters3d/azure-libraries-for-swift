// CopyOptions enumerates the values for copy options.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum CopyOptionsEnum: String, Codable
{
// CopyOptionsCreateCopy specifies the copy options create copy state for copy options.
    case CopyOptionsCreateCopy = "CreateCopy"
// CopyOptionsFailOnConflict specifies the copy options fail on conflict state for copy options.
    case CopyOptionsFailOnConflict = "FailOnConflict"
// CopyOptionsInvalid specifies the copy options invalid state for copy options.
    case CopyOptionsInvalid = "Invalid"
// CopyOptionsOverwrite specifies the copy options overwrite state for copy options.
    case CopyOptionsOverwrite = "Overwrite"
// CopyOptionsSkip specifies the copy options skip state for copy options.
    case CopyOptionsSkip = "Skip"
}