{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "mongodb.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "mongodb.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "mongodb.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Returns the proper Service name depending if an explicit service name is set
in the values file. If the name is not explicitly set it will take the "mongodb.fullname"
*/}}
{{- define "mongodb.serviceName" -}}
  {{- if .Values.service.name -}}
    {{ .Values.service.name }}
  {{- else -}}
    {{ template "mongodb.fullname" .}}
  {{- end -}}
{{- end -}}

{{/*
Returns the proper service account name depending if an explicit service account name is set
in the values file. If the name is not set it will default to either mongodb.fullname if serviceAccount.create
is true or default otherwise.
*/}}
{{- define "mongodb.serviceAccountName" -}}
    {{- if .Values.serviceAccount.create -}}
        {{ default (include "mongodb.fullname" .) .Values.serviceAccount.name }}
    {{- else -}}
        {{ default "default" .Values.serviceAccount.name }}
    {{- end -}}
{{- end -}}

{{/*
Expand the name of the mongodb exporter.
*/}}
{{- define "mongodb-exporter.name" -}}
{{- printf "%s-exporter" (include "mongodb.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Expand the full name of the mongodb exporter.
*/}}
{{- define "mongodb-exporter.fullname" -}}
{{- printf "%s-exporter" (include "mongodb.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
