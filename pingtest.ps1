$MyRemoteHost = "8.8.8.8"
$MyFlag = "False"
while ($MyFlag -eq "False")
{
  $MyResult = ping -n 4 $MyRemoteHost |findstr /C:"Reply "
  if ($MyResult -ne $null)
  {
    #write "$MyRemoteHost is up!"
    #Or do something cool here...
    $LoadStatement = [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
    $MyInput = [System.Windows.Forms.MessageBox]::Show("$MyResult`n`nPinging Google is successful, which means you're online!`n`nClick Ok to close, click Cancel to run again.","Success!","OkCancel","Warning")
    if ($MyInput -eq "OK")
    {
      break
    }
  }
  Start-Sleep 5
}
