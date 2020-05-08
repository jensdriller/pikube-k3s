all: 

install:
	helm install kube-state-metrics stable/kube-state-metrics -f ksm-values.yaml
	helm install prometheus stable/prometheus -f prometheus-values.yaml 

uninstall:
	helm uninstall prometheus
	helm uninstall kube-state-metrics

upgrade:
	helm upgrade kube-state-metrics stable/kube-state-metrics -f ksm-values.yaml
	helm upgrade prometheus stable/prometheus -f prometheus-values.yaml 

manifest:
	helm get manifest prometheus
	helm get manifest kube-state-metrics

values:
	helm get values prometheus
	helm get values kube-state-metrics

.PHONY: install uninstall upgrade manifest values
