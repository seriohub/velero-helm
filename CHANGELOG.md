# Changelog

All notable changes to this project will be documented in this file.

To check the updates for each individual component, refer to the respective changelogs.

***

## [v1.0.0] - 2025-05-07

🚨 Breaking Changes

- Restructured Helm chart values and templates
- Removed deprecated fields and introduced new required parameters
- This version is not backward-compatible with ``0.1.27`` versions

🆕 Features

- Added support for installing the new **core** component

🔧 Improvements

- Restructured *values.yaml* structure
- Added templates for multiple installation scenarios:
  - Single cluster
  - Single cluster with no authentication
  - Single cluster with LDAP authentication
  - Core
  - Core with LDAP
  - Agent-only

🔄 Component Updates

- 📦 Updated **appVersion** to ``0.3.0``
- 🚀 Updated **API** to version ``0.2.5``
- 🎨 Updated **UI** to version ``0.2.5``
- 🛡️ Updated **Watchdog** to version ``0.1.8``

## [v0.1.27] - 2025-04-02

🔄 Component Updates

- 📦 Updated APP to Version ``0.2.4``
- 🚀 Updated API component to version ``0.2.4``
- 🎨 Updated UI component to version ``0.2.4``

## [v0.1.26] - 2025-03-19

🔄 Chart Updates

- Added annotations and pod annotations

🔄 Component Updates

- 📦 Updated APP to Version ``0.2.3``
- 🚀 Updated API component to version ``0.2.3``
- 🎨 Updated UI component to version ``0.2.3``

## [v0.1.25] - 2025-03-13

🔄 Component Updates

- 📦 Updated APP to Version ``0.2.2``
- 🚀 Updated API component to version ``0.2.2``
- 🎨 Updated UI component to version ``0.2.2``

## [v0.1.24] - 2025-03-06

🔄 Component Updates

- 📦 Updated APP to Version ``0.2.1``
- 🚀 Updated API component to version ``0.2.1``
- 🎨 Updated UI component to version ``0.2.1``

## [v0.1.23] - 2025-03-05

🔄 Component Updates

- 📦 Updated APP to Version ``0.2.0``
- 🚀 Updated API to version ``0.2.0``
- 🎨 Updated UI to version ``0.2.0``
- 🛡️ Updated Watchdog to version ``0.1.7``

📊 Helm Chart

- ⚙️ Added inspection backups options

## [v0.1.22] - 2025-02-118

🔄 Component Updates

- 🚀 Updated API to version ``0.1.23``
- 🎨 Updated UI to version ``0.1.22``

## [v0.1.21] - 2025-02-07

🔄 Component Updates

- 🚀 Updated API to version ``0.1.22``
- 🎨 Updated UI to version ``0.1.21``
- 🛡️ Updated Watchdog to version ``0.1.7``

📊 Helm Chart Improvements

- ⚙️ Various optimizations and enhancements in the Helm chart for better deployment and configurability.

## [v0.1.20] - 2025-01-23

- Updated API version to ``0.1.21``
- Updated UI version to ``0.1.20``

## [v0.1.19] - 2025-01-11

- Updated API version to ``0.1.20``
- Updated UI version to ``0.1.19``

## [v0.1.18] - 2024-12-16

- Updated API version to ``0.1.19``
- Updated UI version to ``0.1.18``

## [v0.1.17] - 2024-09-27

- Updated API version to ``0.1.18``
- Updated UI version to ``0.1.17``

## [v0.1.16] - 2024-09-23

- Updated API version to ``0.1.18``
- Updated UI version to ``0.1.16``

## [v0.1.15] - 2024-08-19

- Added secret override feature

## [v0.1.14] - 2024-08-01

- Updated API version to ``0.1.18``
- Updated UI version to ``0.1.16``
- Fix host in ingress

## [v0.1.13] - 2024-07-26

- Updated API version to 0.1.17
- Updated UI version to 0.1.15

## [v0.1.12] - 2024-06-28

- Added the components.txt file
- Added the agent mode value option in global section
- Added the cluster name value option in the global section
- Removed the processClusterName value option in watchdogConfig
- Updated API version to ``0.1.16``
- Updated UI version to ``0.1.14``

## [v0.1.11] - 2024-06-18

- Updated API version to ``0.1.15``
- Updated UI version to ``0.1.13``

## [v0.1.10] - 2024-05-31

- Updated API version to ``0.1.14``
- Updated UI version to ``0.1.12``

## [v0.1.9] - 2024-05-29

- Updated watchdog version to ``0.1.6``
- Added K8S_VELERO_NAMESPACE watchdog config param

## [v0.1.8] - 2024-05-21

- Updated API version to ``0.1.13``
- Updated UI version to ``0.1.11``
- Updated watchdog version to ``0.1.5``
- Added NOTIFICATION_SKIP_DELETING watchdog config param
- Added REPORT_BACKUP_ITEM_PREFIX watchdog config param
- Added REPORT_SCHEDULE_ITEM_PREFIX watchdog config param
- Consolidate ingress into one file

## [v0.1.7] - 2024-05-11

- Updated watchdog version
- Added NOTIFICATION_SKIP_REMOVED watchdog config param

## [v0.1.6] - 2024-05-11

- Several improvements
- Fix TLS metadata and TLS spec

## [v0.1.5] - 2024-05-05

- Several improvements

## [v0.1.4] - 2024-04-24

- Added test for notifications
- Added new versions available notifications

## [v0.1.3] - 2024-04-12

- Added slack notification

## [v0.1.2] - 2024-04-02

- Added pvc options
- Added NOTIFICATION_SKIP_COMPLETED and NOTIFICATION_SKIP_INPROGRESS watchdog config params

## [v0.1.1] - 2024-03-31

- Updated components version

## [v0.1.0] - 2024-03-31

- 🎉 first release!

***

## Components compatibility

[Software version information](https://github.com/seriohub/velero-helm/blob/main/components.txt)

***

## Tags

v0.1.27: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.27](https://github.com/seriohub/velero-helm/releases/tag/v0.1.27)

v0.1.26: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.26](https://github.com/seriohub/velero-helm/releases/tag/v0.1.26)

v0.1.25: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.25](https://github.com/seriohub/velero-helm/releases/tag/v0.1.25)

v0.1.24: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.24](https://github.com/seriohub/velero-helm/releases/tag/v0.1.24)

v0.1.23: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.23](https://github.com/seriohub/velero-helm/releases/tag/v0.1.23)

v0.1.22: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.22](https://github.com/seriohub/velero-helm/releases/tag/v0.1.22)

v0.1.21: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.21](https://github.com/seriohub/velero-helm/releases/tag/v0.1.21)

v0.1.20: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.20](https://github.com/seriohub/velero-helm/releases/tag/v0.1.20)

v0.1.19: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.19](https://github.com/seriohub/velero-helm/releases/tag/v0.1.19)

v0.1.18: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.18](https://github.com/seriohub/velero-helm/releases/tag/v0.1.18)

v0.1.15: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.15](https://github.com/seriohub/velero-helm/releases/tag/v0.1.15)

v0.1.14: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.14](https://github.com/seriohub/velero-helm/releases/tag/v0.1.14)

v0.1.11: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.11](https://github.com/seriohub/velero-helm/releases/tag/v0.1.11)

v0.1.9: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.9](https://github.com/seriohub/velero-helm/releases/tag/v0.1.9)

v0.1.8: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.8](https://github.com/seriohub/velero-helm/releases/tag/v0.1.8)

v0.1.7: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.7](https://github.com/seriohub/velero-helm/releases/tag/v0.1.7)

v0.1.6: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.6](https://github.com/seriohub/velero-helm/releases/tag/v0.1.6)

v0.1.5: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.5](https://github.com/seriohub/velero-helm/releases/tag/v0.1.5)

v0.1.4: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.4](https://github.com/seriohub/velero-helm/releases/tag/v0.1.4)

v0.1.3: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.3](https://github.com/seriohub/velero-helm/releases/tag/v0.1.3)

v0.1.2: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.2](https://github.com/seriohub/velero-helm/releases/tag/v0.1.2)

v0.1.1: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.1](https://github.com/seriohub/velero-helm/releases/tag/v0.1.1)

v0.1.0: [https://github.com/seriohub/velero-helm/releases/tag/v0.1.0](https://github.com/seriohub/velero-helm/releases/tag/v0.1.0)
