#!/bin/bash
# Generated content — do not edit directly.
# Edit alias_k8s.yaml and re-run YAFFA generator.

# Check that kubectl is on PATH
_alias_kubectl_installed() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
}
alias kubectl_installed='_alias_kubectl_installed'

# Short alias for kubectl
_alias_k() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall k 'kubectl' 'Short alias for kubectl' "$@"
}
alias k='_alias_k'

# Get one or more resources (e.g. 'kg pods')
_alias_kg() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kg 'kubectl get' 'Get one or more resources (e.g. '\''kg pods'\'')' "$@"
}
alias kg='_alias_kg'

# List pods in the current namespace
_alias_kgp() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kgp 'kubectl get pods' 'List pods in the current namespace' "$@"
}
alias kgp='_alias_kgp'

# List pods across all namespaces
_alias_kgpa() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kgpa 'kubectl get pods --all-namespaces' 'List pods across all namespaces' "$@"
}
alias kgpa='_alias_kgpa'

# List pods with extra detail (node, IP)
_alias_kgpw() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kgpw 'kubectl get pods -o wide' 'List pods with extra detail (node, IP)' "$@"
}
alias kgpw='_alias_kgpw'

# List services in the current namespace
_alias_kgs() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kgs 'kubectl get svc' 'List services in the current namespace' "$@"
}
alias kgs='_alias_kgs'

# List deployments in the current namespace
_alias_kgd() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kgd 'kubectl get deployments' 'List deployments in the current namespace' "$@"
}
alias kgd='_alias_kgd'

# List cluster nodes
_alias_kgn() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kgn 'kubectl get nodes' 'List cluster nodes' "$@"
}
alias kgn='_alias_kgn'

# List all common resources in the current namespace
_alias_kga() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kga 'kubectl get all' 'List all common resources in the current namespace' "$@"
}
alias kga='_alias_kga'

# Show detailed state of a resource (e.g. 'kd pod my-pod')
_alias_kd() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kd 'kubectl describe' 'Show detailed state of a resource (e.g. '\''kd pod my-pod'\'')' "$@"
}
alias kd='_alias_kd'

# Show detailed state of a pod
_alias_kdp() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kdp 'kubectl describe pod' 'Show detailed state of a pod' "$@"
}
alias kdp='_alias_kdp'

# Show logs for a pod
_alias_kl() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kl 'kubectl logs' 'Show logs for a pod' "$@"
}
alias kl='_alias_kl'

# Follow (stream) logs for a pod
_alias_klf() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall klf 'kubectl logs -f' 'Follow (stream) logs for a pod' "$@"
}
alias klf='_alias_klf'

# Open an interactive shell/command in a pod (e.g. 'kex my-pod -- sh')
_alias_kex() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kex 'kubectl exec -it' 'Open an interactive shell/command in a pod (e.g. '\''kex my-pod -- sh'\'')' "$@"
}
alias kex='_alias_kex'

# Apply a manifest file or directory
_alias_kaf() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kaf 'kubectl apply -f' 'Apply a manifest file or directory' "$@"
}
alias kaf='_alias_kaf'

# Delete a resource — irreversible (e.g. 'kdel pod my-pod')
_alias_kdel() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kdel 'kubectl delete' 'Delete a resource — irreversible (e.g. '\''kdel pod my-pod'\'')' "$@"
}
alias kdel='_alias_kdel'

# List available kubeconfig contexts
_alias_kctx() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kctx 'kubectl config get-contexts' 'List available kubeconfig contexts' "$@"
}
alias kctx='_alias_kctx'

# Switch the active kubeconfig context
_alias_kuc() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kuc 'kubectl config use-context' 'Switch the active kubeconfig context' "$@"
}
alias kuc='_alias_kuc'

# Switch the active namespace for the current context
_alias_kns() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kns 'kubectl config set-context --current --namespace' 'Switch the active namespace for the current context' "$@"
}
alias kns='_alias_kns'

# Show CPU/memory usage per node — requires metrics-server
_alias_ktop() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall ktop 'kubectl top nodes' 'Show CPU/memory usage per node — requires metrics-server' "$@"
}
alias ktop='_alias_ktop'

# Show CPU/memory usage per pod — requires metrics-server
_alias_ktopp() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall ktopp 'kubectl top pods' 'Show CPU/memory usage per pod — requires metrics-server' "$@"
}
alias ktopp='_alias_ktopp'

# Restart a deployment/statefulset (e.g. 'krr deployment my-app')
_alias_krr() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall krr 'kubectl rollout restart' 'Restart a deployment/statefulset (e.g. '\''krr deployment my-app'\'')' "$@"
}
alias krr='_alias_krr'

# Scale a resource (e.g. 'kcsc deployment my-app --replicas=3')
_alias_kcsc() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kcsc 'kubectl scale' 'Scale a resource (e.g. '\''kcsc deployment my-app --replicas=3'\'')' "$@"
}
alias kcsc='_alias_kcsc'

# Create or modify a kubeconfig context entry
_alias_ksc() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall ksc 'kubectl config set-context' 'Create or modify a kubeconfig context entry' "$@"
}
alias ksc='_alias_ksc'

# Forward a local port to a pod/service (e.g. 'kpf pod/my-pod 8080:80')
_alias_kpf() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kpf 'kubectl port-forward' 'Forward a local port to a pod/service (e.g. '\''kpf pod/my-pod 8080:80'\'')' "$@"
}
alias kpf='_alias_kpf'

# List cluster events, oldest first
_alias_kev() {
  _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall kev 'kubectl get events --sort-by=.metadata.creationTimestamp' 'List cluster events, oldest first' "$@"
}
alias kev='_alias_kev'
