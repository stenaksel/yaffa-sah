# Generated content — do not edit directly.
# Edit alias_k8s.yaml and re-run YAFFA generator.

# Check that kubectl is on PATH
function _alias_kubectl_installed {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
}
Set-Alias -Name 'kubectl_installed' -Value _alias_kubectl_installed -Option AllScope -Force

# Short alias for kubectl
function _alias_k {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'k' 'kubectl' 'Short alias for kubectl' @args
}
Set-Alias -Name 'k' -Value _alias_k -Option AllScope -Force

# Get one or more resources (e.g. 'kg pods')
function _alias_kg {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kg' 'kubectl get' 'Get one or more resources (e.g. ''kg pods'')' @args
}
Set-Alias -Name 'kg' -Value _alias_kg -Option AllScope -Force

# List pods in the current namespace
function _alias_kgp {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgp' 'kubectl get pods' 'List pods in the current namespace' @args
}
Set-Alias -Name 'kgp' -Value _alias_kgp -Option AllScope -Force

# List pods across all namespaces
function _alias_kgpa {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgpa' 'kubectl get pods --all-namespaces' 'List pods across all namespaces' @args
}
Set-Alias -Name 'kgpa' -Value _alias_kgpa -Option AllScope -Force

# List pods with extra detail (node, IP)
function _alias_kgpw {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgpw' 'kubectl get pods -o wide' 'List pods with extra detail (node, IP)' @args
}
Set-Alias -Name 'kgpw' -Value _alias_kgpw -Option AllScope -Force

# List services in the current namespace
function _alias_kgs {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgs' 'kubectl get svc' 'List services in the current namespace' @args
}
Set-Alias -Name 'kgs' -Value _alias_kgs -Option AllScope -Force

# List deployments in the current namespace
function _alias_kgd {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgd' 'kubectl get deployments' 'List deployments in the current namespace' @args
}
Set-Alias -Name 'kgd' -Value _alias_kgd -Option AllScope -Force

# List cluster nodes
function _alias_kgn {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgn' 'kubectl get nodes' 'List cluster nodes' @args
}
Set-Alias -Name 'kgn' -Value _alias_kgn -Option AllScope -Force

# List all common resources in the current namespace
function _alias_kga {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kga' 'kubectl get all' 'List all common resources in the current namespace' @args
}
Set-Alias -Name 'kga' -Value _alias_kga -Option AllScope -Force

# Show detailed state of a resource (e.g. 'kd pod my-pod')
function _alias_kd {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kd' 'kubectl describe' 'Show detailed state of a resource (e.g. ''kd pod my-pod'')' @args
}
Set-Alias -Name 'kd' -Value _alias_kd -Option AllScope -Force

# Show detailed state of a pod
function _alias_kdp {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kdp' 'kubectl describe pod' 'Show detailed state of a pod' @args
}
Set-Alias -Name 'kdp' -Value _alias_kdp -Option AllScope -Force

# Show logs for a pod
function _alias_kl {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kl' 'kubectl logs' 'Show logs for a pod' @args
}
Set-Alias -Name 'kl' -Value _alias_kl -Option AllScope -Force

# Follow (stream) logs for a pod
function _alias_klf {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'klf' 'kubectl logs -f' 'Follow (stream) logs for a pod' @args
}
Set-Alias -Name 'klf' -Value _alias_klf -Option AllScope -Force

# Open an interactive shell/command in a pod (e.g. 'kex my-pod -- sh')
function _alias_kex {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kex' 'kubectl exec -it' 'Open an interactive shell/command in a pod (e.g. ''kex my-pod -- sh'')' @args
}
Set-Alias -Name 'kex' -Value _alias_kex -Option AllScope -Force

# Apply a manifest file or directory
function _alias_kaf {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kaf' 'kubectl apply -f' 'Apply a manifest file or directory' @args
}
Set-Alias -Name 'kaf' -Value _alias_kaf -Option AllScope -Force

# Delete a resource — irreversible (e.g. 'kdel pod my-pod')
function _alias_kdel {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kdel' 'kubectl delete' 'Delete a resource — irreversible (e.g. ''kdel pod my-pod'')' @args
}
Set-Alias -Name 'kdel' -Value _alias_kdel -Option AllScope -Force

# List available kubeconfig contexts
function _alias_kctx {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kctx' 'kubectl config get-contexts' 'List available kubeconfig contexts' @args
}
Set-Alias -Name 'kctx' -Value _alias_kctx -Option AllScope -Force

# Switch the active kubeconfig context
function _alias_kuc {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kuc' 'kubectl config use-context' 'Switch the active kubeconfig context' @args
}
Set-Alias -Name 'kuc' -Value _alias_kuc -Option AllScope -Force

# Switch the active namespace for the current context
function _alias_kns {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kns' 'kubectl config set-context --current --namespace' 'Switch the active namespace for the current context' @args
}
Set-Alias -Name 'kns' -Value _alias_kns -Option AllScope -Force

# Show CPU/memory usage per node — requires metrics-server
function _alias_ktop {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'ktop' 'kubectl top nodes' 'Show CPU/memory usage per node — requires metrics-server' @args
}
Set-Alias -Name 'ktop' -Value _alias_ktop -Option AllScope -Force

# Show CPU/memory usage per pod — requires metrics-server
function _alias_ktopp {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'ktopp' 'kubectl top pods' 'Show CPU/memory usage per pod — requires metrics-server' @args
}
Set-Alias -Name 'ktopp' -Value _alias_ktopp -Option AllScope -Force

# Restart a deployment/statefulset (e.g. 'krr deployment my-app')
function _alias_krr {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'krr' 'kubectl rollout restart' 'Restart a deployment/statefulset (e.g. ''krr deployment my-app'')' @args
}
Set-Alias -Name 'krr' -Value _alias_krr -Option AllScope -Force

# Scale a resource (e.g. 'kcsc deployment my-app --replicas=3')
function _alias_kcsc {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kcsc' 'kubectl scale' 'Scale a resource (e.g. ''kcsc deployment my-app --replicas=3'')' @args
}
Set-Alias -Name 'kcsc' -Value _alias_kcsc -Option AllScope -Force

# Create or modify a kubeconfig context entry
function _alias_ksc {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'ksc' 'kubectl config set-context' 'Create or modify a kubeconfig context entry' @args
}
Set-Alias -Name 'ksc' -Value _alias_ksc -Option AllScope -Force

# Forward a local port to a pod/service (e.g. 'kpf pod/my-pod 8080:80')
function _alias_kpf {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kpf' 'kubectl port-forward' 'Forward a local port to a pod/service (e.g. ''kpf pod/my-pod 8080:80'')' @args
}
Set-Alias -Name 'kpf' -Value _alias_kpf -Option AllScope -Force

# List cluster events, oldest first
function _alias_kev {
  if (-not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kev' 'kubectl get events --sort-by=.metadata.creationTimestamp' 'List cluster events, oldest first' @args
}
Set-Alias -Name 'kev' -Value _alias_kev -Option AllScope -Force
