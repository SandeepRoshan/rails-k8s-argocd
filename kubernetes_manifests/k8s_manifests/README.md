# ArgoCD GitOps Configuration

This directory contains configuration files used to set up GitOps with ArgoCD for the DevOps Assessment project.

## Files Included

- `application.yaml`: Main ArgoCD Application definition. It links the Git repository to a Kubernetes namespace and watches for changes in Kubernetes manifests.
- `argocd-cm.yaml` *(optional)*: ArgoCD config map for additional settings.
- `argocd-rbac-cm.yaml` *(optional)*: RBAC rules for ArgoCD user roles and access.
- `repo-config.yaml` *(optional)*: Configuration for connecting private repositories via ArgoCD.

## How It Works

- The `application.yaml` file tells ArgoCD to monitor the folder `kubernetes_manifests/k8s_manifests` inside the Git repo.
- When manifests change in GitHub, ArgoCD automatically applies them to the cluster.
- Features like `autoSync`, `selfHeal`, and `prune` ensure your app stays updated and stable.

## ArgoCD App Details

- **App Name**: `rails-app`
- **Destination Namespace**: `default`
- **Source Repo**: `https://github.com/SandeepRoshan/rails-k8s-argocd.git`
- **Path**: `kubernetes_manifests/k8s_manifests`

## Verification

Check ArgoCD UI at:
http://localhost:8080



You should see:
- Status: **Synced**
- Health: **Healthy**

> Used in Step 3 of the DevOps Assessment submission.
