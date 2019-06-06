RAW_DIR := raw
OUTPUT_DIR := output

RAWS := $(wildcard ${RAW_DIR}/*.m4a) $(wildcard ${RAW_DIR}/*/*.m4a)
OUTPUTS := $(RAWS:raw/%=output/%)

extract: ${OUTPUTS}
.PHONY: extract

${OUTPUT_DIR}/%.m4a: ${RAW_DIR}/%.m4a
	@echo "$< -> $@"
	bin/extract "$<" "$@"



REMOTE_HOST := ${REMOTE_HOST}
REMOTE_DIR := ${REMOTE_DIR}

push:
	rsync -av --delete ./bin/ ${REMOTE_HOST}:${REMOTE_DIR}/bin/
.PHONY: push

pull-output:
	rsync -av ${REMOTE_HOST}:${REMOTE_DIR}/output/ ./output/
.PHONY: pull-output

pull-raw:
	rsync -av ${REMOTE_HOST}:${REMOTE_DIR}/raw/ ./raw/
.PHONY: pull-raw
