# Tekton CI/CD Configuration

This folder contains the Tekton pipeline components used to automate Docker image builds and deployments.

## Files Included
- `task-kaniko.yaml`: Defines the Kaniko task for building and pushing Docker images.
- `pipeline.yaml`: Assembles the Tekton pipeline from the Kaniko task.
- `pipelinerun.yaml`: Triggers the pipeline with Git repo and image parameters.

## Workflow Summary
1. Clones the app source code from GitHub (private)
2. Builds Docker image using Kaniko
3. Pushes image to Docker Hub (`mickleson/myapp:latest`)


