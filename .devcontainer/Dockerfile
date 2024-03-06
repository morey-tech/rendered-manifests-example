# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.2/containers/ubuntu/.devcontainer/base.Dockerfile
FROM mcr.microsoft.com/vscode/devcontainers/base:0-ubuntu-22.04

# Select desired TAG from https://github.com/argoproj/argo-cd/releases
ENV ARGOCD_VERSION=v2.9.3
RUN curl -sSL -o /usr/local/bin/argocd "https://github.com/argoproj/argo-cd/releases/download/${ARGOCD_VERSION}/argocd-linux-amd64" \
    && chmod +x /usr/local/bin/argocd

ENV AKUITY_VERSION=v0.9.5
RUN curl -sSL -o /usr/local/bin/akuity "https://dl.akuity.io/akuity-cli/${AKUITY_VERSION}/linux/amd64/akuity" \
    && chmod +x /usr/local/bin/akuity

ENV KIND_VERSION=v0.20.0
RUN curl -Lo /usr/local/bin/kind https://kind.sigs.k8s.io/dl/${KIND_VERSION}/kind-linux-amd64 \
    && chmod +x /usr/local/bin/kind

# Same K8s version that kind creates.
ENV KUBECTL_VERSION=v1.27.3
RUN curl -Lo /usr/local/bin/kubectl "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl" \
    && chmod +x /usr/local/bin/kubectl

# https://github.com/kubernetes-sigs/kustomize/releases
ENV KUSTOMIZE_VERSION=v5.3.0
RUN curl -Lo /tmp/kustomize.tar.gz https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2F${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64.tar.gz \
    && tar -xvf /tmp/kustomize.tar.gz -C /tmp \
    && mv /tmp/kustomize /usr/local/bin/kustomize \
    && chmod +x /usr/local/bin/kustomize

ENV HELM_VERSION=3.13.1
RUN curl -LO "https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz" \
    && tar -zxvf "helm-v${HELM_VERSION}-linux-amd64.tar.gz" \
    && mv linux-amd64/helm /usr/local/bin/ \
    && rm -rf "helm-v${HELM_VERSION}-linux-amd64.tar.gz" linux-amd64
