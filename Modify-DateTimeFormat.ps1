
# Setting Windows 11 time for content creation, Windows 11 isn't as easy to set up the information on the system. 

Param
    (
    [swtich] $reset
    )


if($reset){
    Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sLongDate -Value "dd MMMM yyyy";
    Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sShortDate -Value "dd-MM-yyyy";
    Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sShortTime -Value "HH:mm";
    Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sTimeFormat -Value "HH:mm:ss";
    Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sYearMonth -Value "MMMM yyyy";

}else {
    Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sLongDate -Value " ";
    Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sShortDate -Value " ";
    Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sShortTime -Value " ";
    Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sTimeFormat -Value " ";
    Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sYearMonth -Value " ";


}