# vui

![Version: 0.1.21](https://img.shields.io/badge/Version-0.1.21-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.19](https://img.shields.io/badge/AppVersion-0.1.19-informational?style=flat-square)

Velero User Interface: a friendly UI and dashboard for Velero

**Homepage:** <https://github.com/seriohub/velero-ui>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Davide Serio |  | <https://github.com/davideserio> |
| Luciano Serio |  | <https://github.com/lucianoserio> |

## Source Code

* <https://github.com/seriohub/velero-ui>
* <https://github.com/seriohub/velero-api>
* <https://github.com/seriohub/velero-watchdog>
* <https://github.com/seriohub/velero-helm>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| api.apiServer.affinity | object | `{}` | Operator affinity |
| api.apiServer.image.registry | string | `"docker.io"` | Image Registry |
| api.apiServer.image.repository | string | `"dserio83/velero-api"` | Image Repository |
| api.apiServer.image.tag | string | `"0.1.22"` | Image Tag |
| api.apiServer.imagePullPolicy | string | `"IfNotPresent"` |  |
| api.apiServer.imagePullSecrets | list | `[]` |  |
| api.apiServer.nodeSelector | object | `{}` | Operator nodeSelector |
| api.apiServer.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | SecurityContext for Pod |
| api.apiServer.resources | object | `{}` | Resources for the Operator |
| api.apiServer.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | SecurityContext for Container |
| api.apiServer.tolerations | list | `[]` | Operator tolerations |
| api.apiServer.volumeMounts | string | `nil` | VolumeMounts |
| api.apiServer.volumes | string | `nil` | Volumes |
| api.ports[0].name | string | `"velero-api"` |  |
| api.ports[0].port | int | `80` |  |
| api.ports[0].protocol | string | `"TCP"` |  |
| api.ports[0].targetPort | string | `"api"` |  |
| api.replicas | int | `1` |  |
| apiConfig.apiEnableDocumentation | string | `"1"` | Enabled/Disabled the fastapi documentation user interfaces |
| apiConfig.apiEndpointPort | string | `"8001"` | Socket bind port |
| apiConfig.apiEndpointUrl | string | `"0.0.0.0"` | Socket bind host |
| apiConfig.apiRateLimiterCustom1 | string | `"Security:xxx:60:100"` | Custom security rate limiter: 60 seconds max requests 10 |
| apiConfig.apiRateLimiterL1 | string | `"60:100"` | Rate limiter: 60 seconds max requests 10 |
| apiConfig.apiTokenExpirationMin | string | `"60"` | Token validity after the creation (minutes) |
| apiConfig.apiTokenRefreshExpirationDays | string | `"7"` | Token validity after the creation (days) |
| apiConfig.debugLevel | string | `"info"` | Debug level info |
| apiConfig.defaultAdminPassword | string | `"admin"` | Default admin password |
| apiConfig.defaultAdminUsername | string | `"admin"` | Default admin username |
| apiConfig.downloadTmpFolder | string | `"/tmp/velero-api"` | Destination folder when executing velero backup download |
| apiConfig.existingSecret | string | `nil` | Reference to own secret |
| apiConfig.origins1 | string | `"*"` | Allowed origin |
| apiConfig.resticPassword | string | `"static-passw0rd"` | Velero restic password |
| apiConfig.securityDisableUsersPwdRate | string | `"1"` | If True user can have a weak password, otherwise is required a strong password |
| apiConfig.securityPathDatabase | string | `"./data"` | Path where create the SQL-Lite database used for storing the users credentials |
| apiConfig.storage.accessModes | list | `["ReadWriteOnce"]` | Storage AccessMode |
| apiConfig.storage.enabled | bool | `false` | Enable persistence for API |
| apiConfig.storage.resources | object | `{"requests":{"storage":"100Mi"}}` | Storage requested resources |
| apiConfig.storage.storageClassName | string | `""` | StorageClassName |
| apiConfig.veleroCliDestPath | string | `"/usr/local/bin"` | Path where to extract the velero executable file |
| apiConfig.veleroCliPath | string | `"./velero-client"` | Path where the compressed velero client archives are located |
| apiConfig.veleroCliPathCustom | string | `"./velero-client-binary"` | Path where the user can store manually the binary file |
| apiConfig.veleroCliVersion | string | `"v1.12.2"` | Name of the velero client release to be used |
| apiSa.serviceAccount.annotations | object | `{}` |  |
| clusterIpService.enabled | bool | `false` | Enable or disable ClusterIP services |
| global.agentMode | bool | `false` | Agent mode: If true, the UI will not be installed |
| global.clusterName | string | `"<cluster-name>"` | ClusterName |
| global.k8SInclusterMode | string | `"True"` | Enable in cluster mode |
| global.veleroNamespace | string | `"velero"` | Name of the namespace where vmware-tanzu/velero is deployed |
| k8SReadOnlyServiceAccount.serviceAccount.annotations | object | `{}` |  |
| report.failedJobsHistoryLimit | int | `0` |  |
| report.schedule | string | `"0 8 * * *"` | Cron for full report |
| report.successfulJobsHistoryLimit | int | `0` |  |
| report.veleroWatchdogReport.affinity | object | `{}` | Operator affinity |
| report.veleroWatchdogReport.image.registry | string | `"docker.io"` | Image Registry |
| report.veleroWatchdogReport.image.repository | string | `"dserio83/velero-watchdog"` | Image Repository |
| report.veleroWatchdogReport.image.tag | string | `"0.1.7"` | Image Tag |
| report.veleroWatchdogReport.imagePullPolicy | string | `"IfNotPresent"` |  |
| report.veleroWatchdogReport.imagePullSecrets | list | `[]` |  |
| report.veleroWatchdogReport.nodeSelector | object | `{}` | Operator nodeSelector |
| report.veleroWatchdogReport.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | SecurityContext for Pod |
| report.veleroWatchdogReport.resources | object | `{}` | Resources for the Operator |
| report.veleroWatchdogReport.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | SecurityContext for Container |
| report.veleroWatchdogReport.tolerations | list | `[]` | Operator tolerations |
| report.veleroWatchdogReport.volumeMounts | string | `nil` | VolumeMounts |
| report.veleroWatchdogReport.volumes | string | `nil` | Volumes |
| ui.ports[0].name | string | `"velero-ui"` |  |
| ui.ports[0].port | int | `80` |  |
| ui.ports[0].protocol | string | `"TCP"` |  |
| ui.ports[0].targetPort | string | `"run"` |  |
| ui.replicas | int | `1` |  |
| ui.webServer.affinity | object | `{}` | Operator affinity |
| ui.webServer.image.registry | string | `"docker.io"` | Image Registry |
| ui.webServer.image.repository | string | `"dserio83/velero-ui"` | Image Repository |
| ui.webServer.image.tag | string | `"0.1.21"` | Image Tag |
| ui.webServer.imagePullPolicy | string | `"IfNotPresent"` | Image pull policy |
| ui.webServer.imagePullSecrets | list | `[]` |  |
| ui.webServer.nodeSelector | object | `{}` | Operator nodeSelector |
| ui.webServer.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | SecurityContext for Pod |
| ui.webServer.resources | object | `{}` | Resources for the Operator |
| ui.webServer.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | SecurityContext for Container |
| ui.webServer.tolerations | list | `[]` | Operator tolerations |
| ui.webServer.volumeMounts | string | `nil` | VolumeMounts |
| ui.webServer.volumes | string | `nil` | Volumes |
| uiConfig.exNextPublicVeleroApiName2 | string | `""` | Cluster name where velero-api 2 is deployed |
| uiConfig.exNextPublicVeleroApiUrl2 | string | `""` | Url to http velero-api 2 project |
| uiConfig.exNextPublicVeleroApiWs2 | string | `""` | Url to ws velero-api 2 project |
| uiConfig.experimental | bool | `false` |  |
| uiConfig.nextPublicLoggerEnabled | bool | `false` | Enabled UI logger |
| uiConfig.nextPublicRefreshDatatableAfter | string | `"1500"` | Milliseconds delay for datatable update after each operation |
| uiConfig.nextPublicRefreshRecent | string | `"5000"` | Polling task in progress updates in milliseconds |
| uiConfig.nextPublicVeleroApiUrl | string | `"http://10.10.0.100"` | Url to http velero-api project |
| uiConfig.nextPublicVeleroApiWs | string | `"ws://10.10.0.100"` | Url to ws velero-api project |
| uiIngress.enabled | bool | `false` | Enable or disable ingress |
| uiIngress.ingressClassName | string | `"nginx"` | Ingress class name |
| uiIngress.metadata.annotations | string | `nil` |  |
| uiIngress.spec.tls | string | `nil` |  |
| uiNp.apiPort | string | `"30001"` | API port |
| uiNp.enabled | bool | `true` | Enable or disable nodeport |
| uiNp.ip | string | `""` | Any ip address of your cluster |
| uiNp.uiPort | string | `"30002"` | UI port |
| watchdog.replicas | int | `1` |  |
| watchdog.veleroMonitoring.affinity | object | `{}` | Operator affinity |
| watchdog.veleroMonitoring.image.registry | string | `"docker.io"` | Image Registry |
| watchdog.veleroMonitoring.image.repository | string | `"dserio83/velero-watchdog"` | Image Repository |
| watchdog.veleroMonitoring.image.tag | string | `"0.1.7"` | Image Tag |
| watchdog.veleroMonitoring.imagePullPolicy | string | `"IfNotPresent"` |  |
| watchdog.veleroMonitoring.imagePullSecrets | list | `[]` |  |
| watchdog.veleroMonitoring.nodeSelector | object | `{}` | Operator nodeSelector |
| watchdog.veleroMonitoring.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | SecurityContext for Pod |
| watchdog.veleroMonitoring.resources | object | `{"limits":{"cpu":"500m","memory":"1256Mi"},"requests":{"cpu":"250m","memory":"256Mi"}}` | Resources for the Operator |
| watchdog.veleroMonitoring.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | SecurityContext for Container |
| watchdog.veleroMonitoring.tolerations | list | `[]` | Operator tolerations |
| watchdog.veleroMonitoring.volumeMounts | string | `nil` | VolumeMounts |
| watchdog.veleroMonitoring.volumes | string | `nil` | Volumes |
| watchdogClusterip.port | int | `8001` |  |
| watchdogClusterip.targetPort | int | `8001` |  |
| watchdogConfig.apiEndpointPort | string | `"8001"` | Socket bind port |
| watchdogConfig.apiEndpointURL | string | `"0.0.0.0"` | Socket bind host |
| watchdogConfig.backupEnable | string | `"True"` | Enable watcher for backups without schedule or last backup for each schedule |
| watchdogConfig.debug | string | `"False"` | View debugging information. |
| watchdogConfig.debugLevel | string | `"info"` | Debug level information. |
| watchdogConfig.emailAccount | string | `"<email>"` | User name account |
| watchdogConfig.emailEnable | string | `"False"` | Enable email notification |
| watchdogConfig.emailPassword | string | `"<pwd>"` | Email password account |
| watchdogConfig.emailRecipients | string | `"<recipients>"` | Email recipients semicolon separated |
| watchdogConfig.emailSmtpPort | string | `"<smtp-port>"` | SMTP port |
| watchdogConfig.emailSmtpServer | string | `"<smtp-server>"` | SMTP server |
| watchdogConfig.expiresDaysWarning | string | `"29"` | Number of days to backup expiration below which to display a warning about the backup |
| watchdogConfig.notificationSkipCompleted | string | `"True"` | Skip notification new completed backup |
| watchdogConfig.notificationSkipDeleting | string | `"True"` | Skip notification backup deleting |
| watchdogConfig.notificationSkipInProgress | string | `"True"` | Skip notification new in progress backup |
| watchdogConfig.notificationSkipRemoved | string | `"True"` | Skip notification backup removed |
| watchdogConfig.processCycleSec | string | `"300"` | Cycle time (seconds) |
| watchdogConfig.reportBackupItemPrefix | string | `""` | Add a prefix to backup items in reports |
| watchdogConfig.reportScheduleItemPrefix | string | `""` | Add a prefix to schedule items in reports |
| watchdogConfig.scheduleEnable | string | `"True"` | Enable watcher for schedule |
| watchdogConfig.sendReportAtStartup | string | `"False"` | Send report at startup |
| watchdogConfig.sendStartMessage | string | `"True"` | Send notification message at startup |
| watchdogConfig.slackChannel | string | `"<channel-id>"` | Channel id where sens the notification |
| watchdogConfig.slackEnable | string | `"False"` | Enable Slack notification |
| watchdogConfig.slackToken | string | `"<token>"` | Token for access to Slack via Http API |
| watchdogConfig.telegramChatId | string | `"<chat-id>"` | Telegram chat id where send the notifications |
| watchdogConfig.telegramEnable | string | `"False"` | Enable telegram notification |
| watchdogConfig.telegramToken | string | `"<token>"` | Token for access to Telegram bot via Http API |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
