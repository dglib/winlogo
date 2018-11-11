
FROM microsoft/iis:nanoserver
#
RUN powershell -NoProfile -Command \
    Import-module IISAdministration; \
    New-IISSite -Name "WINLOGO" -PhysicalPath c:\inetpub\wwwroot -BindingInformation "*:80:"
#
EXPOSE 80
#
ADD www/ /inetpub/wwwroot
