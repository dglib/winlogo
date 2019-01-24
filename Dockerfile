
FROM dtr.docker.ee/microsoft/nanoserver:iis-2016
LABEL OS=SIGNED_NANOSERVER_IIS2016
LABEL DEMO=winlogo
#
RUN powershell -NoProfile -Command \
    Import-module IISAdministration; \
    New-IISSite -Name "WINLOGO" -PhysicalPath c:\inetpub\wwwroot -BindingInformation "*:80:"
#
EXPOSE 80
#### code below
ADD www/ /inetpub/wwwroot
