# HELM Install

With Helm, you can install

- [Velero API](https://github.com/seriohub/velero-api)
- [Velero UI](https://github.com/seriohub/velero-ui)
- [Velero Watchdog](https://github.com/seriohub/velero-watchdog)

Follow these steps:

1. Clone the repository:

    ``` bash
    git clone https://github.com/seriohub/velero-helm.git
    ```

2. Navigate to the Helm folder:

    ``` bash
    cd velero-helm
    ```

3. Edit the necessary data in the [values-override.yaml](values-override.yaml) file.

    For configuration values see:
    - [API Configuration](https://github.com/seriohub/velero-api#configuration)
    - [UI Configuration](https://github.com/seriohub/velero-ui#configuration)
    - [Watchdog Configuration](https://github.com/seriohub/velero-watchdog#configuration)

4. Create the namespace

    ``` bash
    kubectl create ns velero-ui
    ```

5. Install using Helm:

    ``` bash
    helm install -f values-override.yaml seriohub-velero ./seriohub-velero/ -n velero-ui
    ```

6. Upgrade

    ``` bash
    helm upgrade -f values-override.yaml seriohub-velero ./seriohub-velero/ -n velero-ui
    ```

7. Uninstall

    ``` bash
    helm uninstall seriohub-velero -n velero-ui
    kubectl delete ns velero-ui
    ```

Make sure to customize the values in the values-override.yaml file according to your requirements before running the installation command.
