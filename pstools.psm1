function Invoke-VS2017 {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory=$False,ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
    [string]$FullName
  )

  process {
    & "C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\IDE\devenv.exe" $FullName;
  }
}
Set-Alias vs2017 Invoke-VS2017;

function Invoke-VS2015 {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory=$False,ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
    [Alias("FullName")]
    [string]$Name
  )

  process {
    & "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" $Name;
  }
}
Set-Alias vs2015 Invoke-VS2015;