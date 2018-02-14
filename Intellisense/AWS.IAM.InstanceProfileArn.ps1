<#
Copyright 2018-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

    http://aws.amazon.com/apache2.0/

or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#>

$ScriptBlock = {
  [CmdletBinding()]
  param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

  (Get-IAMInstanceProfileList).Arn | Where-Object -FilterScript { $PSItem -match $wordToComplete }
}

<#
Get-Command -Name *-* -ParameterName IamInstanceProfile_Arn |
  ForEach-Object -Process { "'{0}'" -f $PSItem.Name }
#>
$Completer = @{
  CommandName = @(
    'New-EC2ScheduledInstance'
    'Register-EC2IamInstanceProfile'
    'Request-EC2SpotInstance'
    'Set-EC2IamInstanceProfileAssociation'
  )
  ParameterName = 'IamInstanceProfile_Arn'
  ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer