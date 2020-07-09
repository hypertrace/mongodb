# MongoDB
This repo publishes the docker image and helm chart for [MongoDB](https://www.mongodb.com/try/download/community).

## Prerequisites
* Kubernetes 1.10+
* Helm 3.0+

## Docker Image
* [DockerHub](https://hub.docker.com/_/mongo)

## Helm Chart Components
This chart will do the following:

* Create a standalone MongoDB instance using a [StatefulSet](http://kubernetes.io/docs/concepts/abstractions/controllers/statefulsets/).
* Create a MongoDB replicaset having a primary, multiple secondary and multiple arbiter nodes using a [StatefulSet](http://kubernetes.io/docs/concepts/abstractions/controllers/statefulsets/).
* Create a [PodDisruptionBudget](https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-disruption-budget/).
* Create a [Headless Service](https://kubernetes.io/docs/concepts/services-networking/service/) to control the domain of the MongoDB instances.
* Create a Service configured to connect to the available MongoDB instance on the configured client port.
* Optionally apply a [Pod Anti-Affinity](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#inter-pod-affinity-and-anti-affinity-beta-feature) to spread the MongoDB cluster across nodes.
* Optionally start an Exporter container for Prometheus.
* Optionally create a Prometheus ServiceMonitor for exporter container.
* Optionally add a [CronJob](https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/) to take daily backup of MongoDB and save it in [Google Cloud Storage](https://cloud.google.com/products/storage/).
* Optionally add prometheus alerts.


## Installing the Chart
You can install the chart with the release name `mongodb` as below.

```console
$ helm upgrade mongodb ./helm --install --namespace hypertrace
```

## Configuration
You can specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```console
$ helm upgrade my-release ./helm --install --namespace hypertrace -f values.yaml
```

## Default Values
- You can find all user-configurable settings, their defaults in [values.yaml](helm/values.yaml).

