# vui

![Version: 1.0.2](https://img.shields.io/badge/Version-1.0.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.3.2](https://img.shields.io/badge/AppVersion-0.3.2-informational?style=flat-square)

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
| apiService.config.apiEnableDocumentation | bool | `false` | Enable or disable FastAPI documentation (Swagger/Redoc) |
| apiService.config.apiEndpointPort | int | `8001` | Port for the API socket binding |
| apiService.config.apiEndpointUrl | string | `"0.0.0.0"` | Host address for the API socket binding |
| apiService.config.apiRateLimiterCustom1 | string | `"Security:xxx:60:100"` | Custom rate limiter rule 1 (format: label:type:seconds:max_requests) |
| apiService.config.apiRateLimiterL1 | string | `"60:100"` | Rate limiter level 1 (format: seconds:max_requests) |
| apiService.config.apiTokenExpirationMin | int | `60` | Token expiration in minutes after creation |
| apiService.config.apiTokenRefreshExpirationDays | int | `7` | Token refresh expiration in days |
| apiService.config.debugLevel | string | `"info"` | Debug log level (debug, info, warning, error, critical) |
| apiService.config.inspectBackupEnabled | bool | `false` | Enable Velero backup inspection feature |
| apiService.config.origins1 | string | `"*"` | Allowed origins for CORS |
| apiService.config.securityDisableUsersPwdRate | int | `1` | If true, weak passwords are accepted |
| apiService.config.securityPathDatabase | string | `"./data"` | Path to SQLite database file used to store data |
| apiService.config.veleroInspectFolder | string | `"/tmp/velero-inspect-backups"` | Destination folder for Velero backup inspection |
| apiService.deployment.affinity | object | `{}` | Affinity rules for the pod |
| apiService.deployment.annotations | object | `{}` | Annotations to apply to the deployment |
| apiService.deployment.image.registry | string | `"docker.io"` | Registry of the API service container image |
| apiService.deployment.image.repository | string | `"dserio83/velero-api"` | Repository of the API service container image |
| apiService.deployment.image.tag | string | `"0.2.6"` | Tag of the API service container image |
| apiService.deployment.imagePullPolicy | string | `"IfNotPresent"` | Image pull policy (e.g., Always, IfNotPresent) |
| apiService.deployment.imagePullSecrets | list | `[]` | Secrets to use when pulling images from private registries |
| apiService.deployment.nodeSelector | object | `{}` | Node selector for scheduling the pod |
| apiService.deployment.podAnnotations | object | `{}` | Annotations to apply to the pods |
| apiService.deployment.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | Pod security context settings |
| apiService.deployment.replicas | int | `1` | Number of replicas of the API deployment |
| apiService.deployment.resources | object | `{}` | Resources for the Operator |
| apiService.deployment.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | Container-level security context |
| apiService.deployment.storage.accessModes | list | `["ReadWriteOnce"]` | Access modes for the volume |
| apiService.deployment.storage.enabled | bool | `false` | Enable persistent volume for the API |
| apiService.deployment.storage.resources | object | `{"requests":{"storage":"100Mi"}}` | Storage requests (size) |
| apiService.deployment.storage.storageClassName | string | `""` | Storage class name to use |
| apiService.deployment.tolerations | list | `[]` | Tolerations for the pod |
| apiService.deployment.volumeMounts | list | `[]` | volumeMounts for additional volumes |
| apiService.deployment.volumes | list | `[]` | Volumes definitions |
| apiService.nats.enabled | bool | `false` | Enable NATS integration |
| apiService.nats.endpointUrl | string | `""` | URL of the NATS server |
| apiService.nats.portClient | int | `4222` | Client port for NATS |
| apiService.nats.portMonitoring | int | `8222` | Monitoring port for NATS |
| apiService.nats.protocol | string | `"nats"` | Protocol used for NATS |
| apiService.secret.clientKey | string | `nil` | Unique client key |
| apiService.secret.defaultAdminPassword | string | `"<REPLACE_ME>"` | Default admin password (used for first login) |
| apiService.secret.defaultAdminUsername | string | `"<REPLACE_ME>"` | Default admin username (used for first login) |
| apiService.secret.existingSecret | string | `""` | Optional: Name of existing Kubernetes Secret (optional) |
| apiService.secret.natsPassword | string | `""` |  |
| apiService.secret.natsUsername | string | `""` |  |
| apiService.secret.resticPassword | string | `"static-passw0rd"` | Password used by Velero restic integration |
| apiService.secret.securityTokenKey | string | `nil` | Optional: Secret key used for JWT token signing |
| auth.enabled | bool | `true` | Enable or disable authentication (true/false) |
| auth.ldap.authz.authzAttribute | string | `""` | LDAP Attribute for authorization (used when Strategy is ATTRIBUTE) |
| auth.ldap.authz.authzBaseDn | string | `"cn=admins,ou=groups,dc=example,dc=com"` | Base Distinguished Name (DN) for LDAP authorization through group membership |
| auth.ldap.authz.authzFilter | string | `"(&(objectClass=groupOfNames)(member={user_dn}))"` | LDAP Authorization Filter for groups (use {user_dn} as a placeholder) |
| auth.ldap.authz.authzValue | string | `""` | LDAP Attribute Value for authorization (used when Strategy is ATTRIBUTE) |
| auth.ldap.authz.enabled | bool | `true` | Enable or disable LDAP authorization (true/false) |
| auth.ldap.authz.strategy | string | `"GROUP"` | Authorization strategy: GROUP or ATTRIBUTE |
| auth.ldap.baseDn | string | `"dc=example,dc=com"` | Base Distinguished Name (DN) for LDAP searches |
| auth.ldap.bindDn | string | `"cn=admin,dc=example,dc=com"` | LDAP Service Account: It is recommended to use a read-only account |
| auth.ldap.bindPassword | string | `"<secret>"` | LDAP Service Secret: **Should be stored securely using Kubernetes Secrets!** |
| auth.ldap.uri | string | `"ldaps://ldap.example.com:636"` | Complete LDAP URI, including protocol and port (e.g., ldaps://ldap.example.com:636) |
| auth.ldap.useSsl | bool | `true` | Use SSL for LDAP connection (true/false) |
| auth.ldap.userSearchFilter | string | `"(&(objectClass=person)(uid={username}))"` | LDAP User Search Filter (use {username} as a placeholder) |
| auth.mode | string | `"BUILT-IN"` | Type of authentication: BUILT-IN (default), LDAP |
| coreService.config.apiEndpointPort | int | `8001` | Port for the API socket binding |
| coreService.config.apiEndpointUrl | string | `"0.0.0.0"` | Host address for the API socket binding |
| coreService.config.apiRateLimiterCustom1 | string | `"Security:xxx:60:100"` | Custom rate limiter rule 1 (format: label:type:seconds:max_requests) |
| coreService.config.apiRateLimiterL1 | string | `"60:100"` | Rate limiter level 1 (format: seconds:max_requests) |
| coreService.config.apiTokenExpirationMin | int | `60` | Token expiration in minutes after creation |
| coreService.config.apiTokenRefreshExpirationDays | int | `7` | Token refresh expiration in days |
| coreService.config.debugLevel | string | `"info"` | Debug log level (debug, info, warning, error, critical) |
| coreService.config.origins1 | string | `"*"` | Allowed origins for CORS |
| coreService.config.securityDisableUsersPwdRate | int | `1` | If true, weak passwords are accepted |
| coreService.config.securityPathDatabase | string | `"./data"` | Path to SQLite database file used to store data |
| coreService.deployment.affinity | object | `{}` | Affinity rules for the Core pod |
| coreService.deployment.annotations | object | `{}` | Annotations to apply to the deployment |
| coreService.deployment.image.registry | string | `"hub.serio.cloud"` | Registry of the Core service container image |
| coreService.deployment.image.repository | string | `"vui/vui-core"` | Repository of the Core service container image |
| coreService.deployment.image.tag | string | `"0.1.1"` | Tag of the Core service container image |
| coreService.deployment.imagePullPolicy | string | `"IfNotPresent"` | Image pull policy (e.g., Always, IfNotPresent) |
| coreService.deployment.imagePullSecrets | list | `[{"name":"vui-core-login-secret"}]` | Secrets to use when pulling images from private registries |
| coreService.deployment.nodeSelector | object | `{}` | Node selector for scheduling the Core pod |
| coreService.deployment.podAnnotations | object | `{}` | Annotations to apply to the pods |
| coreService.deployment.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | Pod security context settings |
| coreService.deployment.resources | object | `{}` | Resource requests and limits for the Core container |
| coreService.deployment.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | Container-level security context |
| coreService.deployment.storage.accessModes | list | `["ReadWriteOnce"]` | Access modes for the volume |
| coreService.deployment.storage.enabled | bool | `false` | Enable persistent volume for Core |
| coreService.deployment.storage.resources | object | `{"requests":{"storage":"100M"}}` | Storage requests (size) |
| coreService.deployment.storage.storageClassName | string | `""` | Storage class name to use |
| coreService.deployment.tolerations | list | `[]` | Tolerations for the Core pod |
| coreService.deployment.volumeMounts | list | `[]` | Volume mounts for the Core container |
| coreService.deployment.volumes | list | `[]` | Volumes definitions for the Core pod |
| coreService.secret.defaultAdminPassword | string | `"<REPLACE_ME>"` | Default admin password (used for first login) |
| coreService.secret.defaultAdminUsername | string | `"<REPLACE_ME>"` | Default admin username (used for first login) |
| coreService.secret.existingSecret | string | `""` | Optional: Name of existing Kubernetes Secret |
| coreService.secret.natsPassword | string | `""` | Password for connecting to the NATS server |
| coreService.secret.natsUsername | string | `""` | Username for connecting to the NATS server |
| cronJobs.report.failedJobsHistoryLimit | int | `0` | Maximum number of failed job histories to retain |
| cronJobs.report.jobSpec.affinity | object | `{}` | Affinity rules for the cron job pod |
| cronJobs.report.jobSpec.annotations | object | `{}` | Annotations to apply to the cron job |
| cronJobs.report.jobSpec.image.registry | string | `"docker.io"` | Registry of the container image used in the cron job |
| cronJobs.report.jobSpec.image.repository | string | `"dserio83/velero-watchdog"` | Repository of the container image used in the cron job |
| cronJobs.report.jobSpec.image.tag | string | `"0.1.8"` | Tag of the container image used in the cron job |
| cronJobs.report.jobSpec.imagePullPolicy | string | `"IfNotPresent"` | Image pull policy (e.g., Always, IfNotPresent) |
| cronJobs.report.jobSpec.imagePullSecrets | list | `[]` | Secrets to use when pulling images from private registries |
| cronJobs.report.jobSpec.nodeSelector | object | `{}` | Node selector for scheduling the cron job pod |
| cronJobs.report.jobSpec.podAnnotations | object | `{}` | Annotations to apply to the pods created by the cron job |
| cronJobs.report.jobSpec.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | Pod security context settings |
| cronJobs.report.jobSpec.resources | object | `{}` | Resource requests and limits for the cron job container |
| cronJobs.report.jobSpec.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | Container-level security context |
| cronJobs.report.jobSpec.tolerations | list | `[]` | Tolerations for the cron job pod |
| cronJobs.report.jobSpec.volumeMounts | list | `[]` | Volume mounts for the cron job container |
| cronJobs.report.jobSpec.volumes | list | `[]` | Volumes definitions for the cron job pod |
| cronJobs.report.schedule | string | `"0 8 * * *"` | Cron schedule expression for generating full reports |
| cronJobs.report.successfulJobsHistoryLimit | int | `0` | Maximum number of successful job histories to retain |
| exposure.clusterIP | object | `{}` | ClusterIP configuration (used if mode is clusterIP) |
| exposure.ingress.ingressClassName | string | `"nginx"` | Name of the ingress class (e.g., nginx, traefik) |
| exposure.ingress.metadata.annotations | string | `nil` |  |
| exposure.ingress.spec.tls[0].hosts[0] | string | `"vui.local.dev"` |  |
| exposure.mode | string | `"clusterIP"` | Exposure mode: nodePort, ingress, or clusterIP |
| exposure.nodePort.apiPort | int | `30001` | NodePort to expose the API service |
| exposure.nodePort.ip | string | `nil` | IP address of the node where the service is exposed (used in nodePort mode). This must be set manually. |
| exposure.nodePort.uiPort | int | `30002` | NodePort to expose the UI service |
| global.agentMode | bool | `false` | If true, the UI will not be installed |
| global.clusterName | string | `"<cluster-name>"` | Name of the cluster where the chart is being deployed |
| global.core | bool | `false` | If true, the Core for multi-cluster management will be installed. |
| global.k8SInclusterMode | bool | `true` | If true, enables in-cluster mode for Kubernetes |
| global.serviceAccounts.adminServiceAccount.annotations | object | `{}` |  |
| global.serviceAccounts.k8SReadOnlyServiceAccount.annotations | object | `{}` |  |
| global.veleroNamespace | string | `"velero"` | Namespace where the VMware Tanzu Velero instance is deployed |
| natsService.deployment.image.registry | string | `"docker.io"` | Registry of the NATS container image |
| natsService.deployment.image.repository | string | `"nats"` | Repository of the NATS container image |
| natsService.deployment.image.tag | string | `"alpine3.20"` | Tag of the NATS container image |
| natsService.deployment.imagePullPolicy | string | `"IfNotPresent"` | Image pull policy (e.g., Always, IfNotPresent) |
| natsService.deployment.imagePullSecrets | list | `[]` | Secrets to use when pulling images from private registries |
| natsService.deployment.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | Pod security context settings |
| natsService.deployment.ports | list | `[{"name":"client","port":4222,"protocol":"TCP","targetPort":"client"},{"name":"monitoring","port":8222,"protocol":"TCP","targetPort":"monitoring"}]` | Ports exposed by the NATS container |
| natsService.deployment.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | Container-level security context |
| natsService.loadBalancerIP | string | `nil` | Static IP address to assign to the LoadBalancer service. This must be pre-reserved in your cloud provider or infrastructure. |
| natsService.protocol | string | `"nats"` | Protocol used by the NATS service |
| uiService.config.nextPublicLoggerEnabled | bool | `false` | Enable or disable the UI logger |
| uiService.config.nextPublicRefreshDatatableAfter | int | `1500` | Delay (in milliseconds) before refreshing datatable after actions |
| uiService.config.nextPublicRefreshRecent | int | `5000` | Interval (in milliseconds) for polling running tasks updates |
| uiService.config.nextPublicVeleroApiUrl | string | `"http://10.10.0.100"` | HTTP URL of the Velero API backend |
| uiService.config.nextPublicVeleroApiWs | string | `"ws://10.10.0.100"` | WebSocket URL of the Velero API backend |
| uiService.deployment.affinity | object | `{}` | Affinity rules for the UI pod |
| uiService.deployment.annotations | object | `{}` | Annotations to apply to the deployment |
| uiService.deployment.image.registry | string | `"docker.io"` | Registry of the UI container image |
| uiService.deployment.image.repository | string | `"dserio83/velero-ui"` | Repository of the UI container image |
| uiService.deployment.image.tag | string | `"0.2.6"` | Tag of the UI container image |
| uiService.deployment.imagePullPolicy | string | `"IfNotPresent"` | Image pull policy (e.g., Always, IfNotPresent) |
| uiService.deployment.imagePullSecrets | list | `[]` | Secrets to use when pulling images from private registries |
| uiService.deployment.nodeSelector | object | `{}` | Node selector for scheduling the UI pod |
| uiService.deployment.podAnnotations | object | `{}` | Annotations to apply to the pods |
| uiService.deployment.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | Pod security context settings |
| uiService.deployment.replicas | int | `1` | Number of replicas of the UI deployment |
| uiService.deployment.resources | object | `{}` | Resource requests and limits for the UI pod |
| uiService.deployment.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | Container-level security context |
| uiService.deployment.tolerations | list | `[]` | Tolerations for the UI pod |
| uiService.deployment.volumeMounts | list | `[]` | Volume mounts for the UI container |
| uiService.deployment.volumes | list | `[]` | Volumes definitions for the UI pod |
| watchdogService.config.apiEndpointPort | int | `8001` | Port for API socket binding |
| watchdogService.config.apiEndpointUrl | string | `"0.0.0.0"` | Host address for API socket binding |
| watchdogService.config.backupEnable | bool | `true` | Enable backup monitoring |
| watchdogService.config.debug | bool | `false` | VEnable debug output |
| watchdogService.config.debugLevel | string | `"info"` | Log level for debugging (e.g., debug, info, warning, error, critical) |
| watchdogService.config.emailAccount | string | `"<email>"` | [DEPRECATED] Email username for account (no longer used, will be removed in future versions) |
| watchdogService.config.emailEnable | bool | `false` | [DEPRECATED] Enable email notifications (no longer used, will be removed in future versions) |
| watchdogService.config.emailPassword | string | `"<pwd>"` | [DEPRECATED] Email account password account (no longer used, will be removed in future versions) |
| watchdogService.config.emailRecipients | string | `"<recipients>"` | [DEPRECATED] Recipients for email notifications (semicolon-separated) (no longer used, will be removed in future versions) |
| watchdogService.config.emailSmtpPort | string | `"<smtp-port>"` | [DEPRECATED] SMTP port (no longer used, will be removed in future versions) |
| watchdogService.config.emailSmtpServer | string | `"<smtp-server>"` | [DEPRECATED] SMTP server address (no longer used, will be removed in future versions) |
| watchdogService.config.expiresDaysWarning | int | `29` | Number of days before expiration to trigger a backup warning |
| watchdogService.config.notificationSkipCompleted | bool | `true` | Skip notifications for completed backups |
| watchdogService.config.notificationSkipDeleting | bool | `true` | Skip notifications for backups being deleted |
| watchdogService.config.notificationSkipInProgress | bool | `true` | Skip notifications for in-progress backups |
| watchdogService.config.notificationSkipRemoved | bool | `true` | Skip notifications for removed backups |
| watchdogService.config.processCycleSec | int | `300` | Cycle time (in seconds) for processing backup/schedule states |
| watchdogService.config.reportBackupItemPrefix | string | `""` | Add a prefix to backup items in reports |
| watchdogService.config.reportScheduleItemPrefix | string | `""` | Add a prefix to schedule items in reports |
| watchdogService.config.scheduleEnable | bool | `true` | Enable schedule monitoring |
| watchdogService.config.sendReportAtStartup | bool | `false` | Send report at startup |
| watchdogService.config.sendStartMessage | bool | `true` | Send a notification message at startup |
| watchdogService.config.slackChannel | string | `"<channel-id>"` | [DEPRECATED] Slack channel ID for notifications (no longer used, will be removed in future versions) |
| watchdogService.config.slackEnable | bool | `false` | [DEPRECATED] Enable Slack notifications (no longer used, will be removed in future versions) |
| watchdogService.config.slackToken | string | `"<token>"` | [DEPRECATED] Token to access Slack API (no longer used, will be removed in future versions) |
| watchdogService.config.telegramChatId | string | `"<chat-id>"` | [DEPRECATED] Telegram chat ID for notifications(no longer used, will be removed in future versions) |
| watchdogService.config.telegramEnable | bool | `false` | [DEPRECATED] Enable Telegram notifications (no longer used, will be removed in future versions) |
| watchdogService.config.telegramToken | string | `"<token>"` | [DEPRECATED] Token to access Telegram Bot API (no longer used, will be removed in future versions) |
| watchdogService.deployment.affinity | object | `{}` | Affinity rules for the watchdog pod |
| watchdogService.deployment.annotations | object | `{}` | Annotations to apply to the deployment |
| watchdogService.deployment.image.registry | string | `"docker.io"` | Registry of the watchdog container image |
| watchdogService.deployment.image.repository | string | `"dserio83/velero-watchdog"` | Repository of the watchdog container image |
| watchdogService.deployment.image.tag | string | `"0.1.8"` | Tag of the watchdog container image |
| watchdogService.deployment.imagePullPolicy | string | `"IfNotPresent"` | Image pull policy (e.g., Always, IfNotPresent) |
| watchdogService.deployment.imagePullSecrets | list | `[]` | Secrets to use when pulling images from private registries |
| watchdogService.deployment.nodeSelector | object | `{}` | Node selector for scheduling the watchdog pod |
| watchdogService.deployment.podAnnotations | object | `{}` | Annotations to apply to the pods |
| watchdogService.deployment.podSecurityContext | object | `{"enabled":false,"seccompProfile":{"type":"RuntimeDefault"}}` | Pod security context settings |
| watchdogService.deployment.ports | list | `[{"name":"watchdog-api","port":8001,"protocol":"TCP","targetPort":8001}]` | Ports exposed by the watchdog service |
| watchdogService.deployment.replicas | int | `1` | Number of replicas of the watchdog deployment |
| watchdogService.deployment.resources | object | `{}` | Resource requests and limits for the watchdog container |
| watchdogService.deployment.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":false,"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":65534}` | Container-level security context |
| watchdogService.deployment.tolerations | list | `[]` | Tolerations for the watchdog pod |
| watchdogService.deployment.volumeMounts | list | `[]` | Volume mounts for the watchdog container |
| watchdogService.deployment.volumes | list | `[]` | Volumes |
| watchdogService.secret.existingSecret | string | `""` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
