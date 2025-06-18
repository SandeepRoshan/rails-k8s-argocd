# 🚀 DevOps Coding Assessment – Sandeep Roshan

## 📖 Project Overview

This project demonstrates the complete DevOps lifecycle for a Ruby on Rails web application backed by a PostgreSQL database. It showcases:

- 🐳 Docker-based containerization
- ☸️ Kubernetes-based deployment and service orchestration
- 🔁 GitOps automation using ArgoCD
- ⚙️ CI/CD pipeline with Tekton and Kaniko

### 💡 Why This Matters

This end-to-end pipeline mirrors real-world production DevOps flows. It supports:
- Fast, repeatable deployments
- Secure and automated image builds
- Git-driven deployment synchronization
- Full observability into your container and cluster lifecycle

---

## 🧱 Folder Structure

```
DevOps_Assessment/
├── docker_setup/                 # Dockerfile & docker-compose setup
├── kubernetes_manifests/        # K8s manifests for app, DB, services, ingress
│   └── k8s_manifests/
├── argocd_gitops/               # application.yaml for ArgoCD
│   └── argocd/
├── tekton-pipeline-demo/        # Tekton CI/CD pipeline setup
│   ├── tekton/
│   └── k8s/
├── README.md                    # This file
```

---

## 🐳 Step 1: Docker

- A `Dockerfile` builds the Rails app image.
- `docker-compose.yml` starts the app + PostgreSQL services.
- Verified locally via:

```bash
docker compose up -d
docker ps
```

---

## ☸️ Step 2: Kubernetes

- Kubernetes manifests include:
  - `Deployment` for Rails app
  - `StatefulSet` for PostgreSQL
  - `Service` for internal networking
  - `Ingress` for external traffic

```bash
kubectl get pods
kubectl get svc
kubectl get ingress
```

---

## 🚀 Step 3: GitOps with ArgoCD

- ArgoCD syncs manifests from GitHub repo
- `application.yaml` points to `kubernetes_manifests/k8s_manifests/`
- Auto-sync and self-heal are enabled

**ArgoCD App Name:** `rails-app`  
**Status:** Synced ✅ | Healthy ✅

---

## 🔁 Step 4: Tekton CI/CD with Kaniko

- Tekton pipeline performs:
  1. Git clone from private GitHub repo using a secret token
  2. Build Docker image with Kaniko
  3. Push to Docker Hub: `docker.io/mickleson/myapp:latest`

### Key Files:
- `task-kaniko.yaml`
- `pipeline.yaml`
- `pipelinerun.yaml`

### Verify Deployed Image:
```bash
kubectl get pod -l app=rails -o=jsonpath="{.items[0].spec.containers[0].image}"
# Should output: mickleson/myapp:latest
```

---

## 🔗 Useful Links

- 🐳 Docker Hub: [mickleson/myapp](https://hub.docker.com/r/mickleson/myapp)
- 🛠 Tekton Dashboard: http://localhost:9097
- 🚀 ArgoCD UI: http://localhost:8080

---

## 📽️ Demo Video Script (2–3 mins)

1. **Docker**: Show `docker compose up`, containers running
2. **K8s**: Show `kubectl get pods`, services, ingress
3. **ArgoCD**: Show `rails-app` synced and healthy in UI
4. **Tekton**: Trigger pipeline in dashboard → show logs
5. **Docker Hub**: Show pushed image
6. **K8s**: Confirm image in use via `kubectl get pod ...`

---

## ✅ Technologies Used

- Docker & Docker Compose
- Kubernetes
- ArgoCD for GitOps
- Tekton Pipelines
- Kaniko executor
- GitHub (private repo with token)
- Docker Hub

---

## 🙌 Author

**Sandeep Roshan**  
Final-year CSE Student | DevOps Engineer Trainee Candidate  
GitHub: [@SandeepRoshan](https://github.com/SandeepRoshan)

---

> ✅ This project represents a real-world DevOps pipeline — secure, automated, and production-ready.
