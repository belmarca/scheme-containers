all:
	@echo all

scheme_from_source: scheme_from_source/Dockerfile
	docker image inspect $@ >/dev/null 2>&1 \
	&& echo "Image already built." \
	|| docker build -t $@ $@/

scheme_packages: scheme_packages/Dockerfile
	docker image inspect $@ >/dev/null 2>&1 \
	&& echo "Image already built." \
	|| docker build -t $@ $@/
