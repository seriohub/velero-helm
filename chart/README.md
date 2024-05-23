# vui

![Version: 0.1.8](https://img.shields.io/badge/Version-0.1.8-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.8](https://img.shields.io/badge/AppVersion-0.1.8-informational?style=flat-square)

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
| api.apiServer.image.tag | string | `"0.1.13"` | Image Tag |
| api.apiServer.imagePullPolicy | string | `"IfNotPresent"` |  |
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
| api.type | string | `"ClusterIP"` |  |
| apiConfig.apiEnableDocumentation | string | `"1"` |  |
| apiConfig.apiEndpointPort | string | `"8001"` |  |
| apiConfig.apiEndpointUrl | string | `"0.0.0.0"` |  |
| apiConfig.apiRateLimiterCustom1 | string | `"Security:xxx:60:20"` |  |
| apiConfig.apiRateLimiterL1 | string | `"60:20"` |  |
| apiConfig.apiTokenExpirationMin | string | `"60"` |  |
| apiConfig.apiTokenRefreshExpirationDays | string | `"7"` |  |
| apiConfig.awsAccessKeyId | string | `"<AWS_ACCESS_KEY_ID>"` |  |
| apiConfig.awsSecretAccessKey | string | `"<AWS_SECRET_ACCESS_KEY>"` |  |
| apiConfig.debugLevel | string | `"info"` |  |
| apiConfig.downloadTmpFolder | string | `"/tmp/velero-api"` |  |
| apiConfig.k8SInClusterMode | string | `"True"` |  |
| apiConfig.origins1 | string | `"*"` |  |
| apiConfig.resticPassword | string | `"static-passw0rd"` |  |
| apiConfig.securityDisableUsersPwdRate | string | `"1"` |  |
| apiConfig.securityPathDatabase | string | `"./data"` |  |
| apiConfig.storage.accessModes | list | `["ReadWriteOnce"]` | Storage AccessMode |
| apiConfig.storage.enabled | bool | `false` | Enable persistence for API |
| apiConfig.storage.resources | object | `{"requests":{"storage":"100Mi"}}` | Storage requested resources |
| apiConfig.storage.storageClassName | string | `""` | StorageClassName |
| apiConfig.veleroCliDestPath | string | `"/usr/local/bin"` |  |
| apiConfig.veleroCliPath | string | `"./velero-client"` |  |
| apiConfig.veleroCliPathCustom | string | `"./velero-client-binary"` |  |
| apiConfig.veleroCliVersion | string | `"v1.12.2"` |  |
| apiSa.serviceAccount.annotations | object | `{}` |  |
| global.kubernetesClusterDomain | string | `"cluster.local"` | Kubernetes Cluster Domain |
| global.veleroNamespace | string | `"velero"` | Namespace of velero installation |
| k8SReadOnlyServiceAccount.serviceAccount.annotations | object | `{}` |  |
| report.failedJobsHistoryLimit | int | `0` |  |
| report.schedule | string | `"0 8 * * *"` |  |
| report.successfulJobsHistoryLimit | int | `0` |  |
| report.veleroWatchdogReport.affinity | object | `{}` | Operator affinity |
| report.veleroWatchdogReport.image.registry | string | `"docker.io"` | Image Registry |
| report.veleroWatchdogReport.image.repository | string | `"dserio83/velero-watchdog"` | Image Repository |
| report.veleroWatchdogReport.image.tag | string | `"0.1.5"` | Image Tag |
| report.veleroWatchdogReport.imagePullPolicy | string | `"IfNotPresent"` |  |
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
| ui.type | string | `"ClusterIP"` |  |
| ui.webServer.affinity | object | `{}` | Operator affinity |
| ui.webServer.image.registry | string | `"docker.io"` | Image Registry |
| ui.webServer.image.repository | string | `"dserio83/velero-ui"` | Image Repository |
| ui.webServer.image.tag | string | `"0.1.11"` | Image Tag |
| ui.webServer.imagePullPolicy | string | `"IfNotPresent"` | Image pull policy   |
| ui.webServer.nodeSelector | object | `{}` | Operator nodeSelector |
| ui.webServer.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | SecurityContext for Pod |
| ui.webServer.resources | object | `{}` | Resources for the Operator |
| ui.webServer.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | SecurityContext for Container |
| ui.webServer.tolerations | list | `[]` | Operator tolerations |
| ui.webServer.volumeMounts | string | `nil` | VolumeMounts |
| ui.webServer.volumes | string | `nil` | Volumes |
| uiConfig.nextPublicRefreshDatatableAfter | string | `"1500"` |  |
| uiConfig.nextPublicRefreshRecent | string | `"5000"` |  |
| uiConfig.nextPublicVeleroApiUrl | string | `"http://10.10.0.100"` |  |
| uiConfig.nextPublicVeleroApiWs | string | `"ws://10.10.0.100"` |  |
| uiIngress.enabled | bool | `false` |  |
| uiIngress.host | string | `"velero.your-cluster-domain"` |  |
| uiIngress.ingressClassName | string | `"nginx"` |  |
| uiIngress.metadata.annotations | string | `nil` |  |
| uiIngress.spec.tls | string | `nil` |  |
| uiIngress.tls.enabled | bool | `true` |  |
| uiNp.apiPort | string | `"30001"` |  |
| uiNp.enabled | bool | `true` |  |
| uiNp.ip | string | `""` |  |
| uiNp.uiPort | string | `"30002"` |  |
| watchdog.replicas | int | `1` |  |
| watchdog.veleroMonitoring.affinity | object | `{}` | Operator affinity |
| watchdog.veleroMonitoring.image.registry | string | `"docker.io"` | Image Registry |
| watchdog.veleroMonitoring.image.repository | string | `"dserio83/velero-watchdog"` | Image Repository |
| watchdog.veleroMonitoring.image.tag | string | `"0.1.5"` | Image Tag |
| watchdog.veleroMonitoring.imagePullPolicy | string | `"IfNotPresent"` |  |
| watchdog.veleroMonitoring.nodeSelector | object | `{}` | Operator nodeSelector |
| watchdog.veleroMonitoring.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | SecurityContext for Pod |
| watchdog.veleroMonitoring.resources | object | `{"limits":{"cpu":"500m","memory":"1256Mi"},"requests":{"cpu":"250m","memory":"256Mi"}}` | Resources for the Operator |
| watchdog.veleroMonitoring.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | SecurityContext for Container |
| watchdog.veleroMonitoring.tolerations | list | `[]` | Operator tolerations |
| watchdog.veleroMonitoring.volumeMounts | string | `nil` | VolumeMounts |
| watchdog.veleroMonitoring.volumes | string | `nil` | Volumes |
| watchdogClusterip.port | int | `8001` |  |
| watchdogClusterip.targetPort | int | `8001` |  |
| watchdogConfig.apiEndPointPort | string | `"8001"` |  |
| watchdogConfig.apiEndpointURL | string | `"0.0.0.0"` |  |
| watchdogConfig.backupEnable | string | `"True"` |  |
| watchdogConfig.debugLevel | string | `"Info"` |  |
| watchdogConfig.emailAccount | string | `"<email>"` |  |
| watchdogConfig.emailEnable | string | `"False"` |  |
| watchdogConfig.emailPassword | string | `"<pwd>"` |  |
| watchdogConfig.emailRecipients | string | `"<recipients>"` |  |
| watchdogConfig.emailSmtpPort | string | `"<smtp-port>"` |  |
| watchdogConfig.emailSmtpServer | string | `"<smtp-server>"` |  |
| watchdogConfig.expiresDaysWarning | string | `"29"` |  |
| watchdogConfig.k8SInclusterMode | string | `"True"` |  |
| watchdogConfig.notificationSkipCompleted | string | `"True"` |  |
| watchdogConfig.notificationSkipDeleting | string | `"True"` |  |
| watchdogConfig.notificationSkipInProgress | string | `"True"` |  |
| watchdogConfig.notificationSkipRemoved | string | `"True"` |  |
| watchdogConfig.processClusterName | string | `"<cluster-name>"` |  |
| watchdogConfig.processCycleSec | string | `"300"` |  |
| watchdogConfig.reportBackupItemPrefix | string | `""` |  |
| watchdogConfig.reportScheduleItemPrefix | string | `""` |  |
| watchdogConfig.scheduleEnable | string | `"True"` |  |
| watchdogConfig.slackChannel | string | `"<channel-id>"` |  |
| watchdogConfig.slackEnable | string | `"False"` |  |
| watchdogConfig.slackToken | string | `"<token>"` |  |
| watchdogConfig.telegramChatId | string | `"<chat-id>"` |  |
| watchdogConfig.telegramEnable | string | `"False"` |  |
| watchdogConfig.telegramToken | string | `"<token>"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
