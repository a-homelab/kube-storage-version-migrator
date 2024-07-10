export REGISTRY = us.gcr.io/k8s-artifacts-prod/storage-migrator
export VERSION = v0.0.5

.PHONY: manifests clean

manifests:
	  (cd kube-storage-version-migrator && git checkout ${VERSION} && make local-manifests)
		mkdir -p manifests/
		cp kube-storage-version-migrator/manifests.local/* manifests/

clean:
		rm -r manifests/
