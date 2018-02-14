<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  Get-ECSTaskDefinitionFamilyList
}

<#
Get-AWSCmdletName -Service ECS |
  Where-Object -FilterScript { Get-Command -Name $PSItem.CmdletName -ParameterName TaskDefinition -ErrorAction Ignore } |
  ForEach-Object -Process { "'{0}'" -f $PSItem.CmdletName }
#>
$Completer = @{
  CommandName = @(
    'Get-ECSTaskDefinitionDetail'
    'New-ECSService'
    'New-ECSTask'
    'Start-ECSTask'
    'Unregister-ECSTaskDefinition'
    'Update-ECSService'
  )
  ParameterName = 'TaskDefinition'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer