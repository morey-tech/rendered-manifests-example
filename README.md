# rendered-manifests-example
A GitOps repository with an environment-centric approach. In this scenario, the team treats their environments as "first class." Each service is a single component of a larger whole that should be deployed as an atomic unit.


The 
```yaml
frontend:        # local helm chart, values files per env
  - values-dev.yaml
  - values-prd.yaml
backend:
  base:
  overlays:
    dev:
    prod:
```
