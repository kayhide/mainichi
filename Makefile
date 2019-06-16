RAW_DIR := raw
SRC_DIR := src
OUTPUT_DIR := output

SRCS := $(wildcard ${SRC_DIR}/*/*)
OUTPUTS := $(SRCS:src/%=output/%.m4a)

extract: ${OUTPUTS}
.PHONY: extract


${OUTPUT_DIR}/%.m4a: ${SRC_DIR}/%
	$(eval RAW_FILE := ${RAW_DIR}/$(subst -,/,${@F}))
	$(eval LENGTH := $(shell cat $< | head -n 1))
	$(eval OFFSET := $(shell cat $< | tail -n +2 | head -n 1))
	@echo "$< -> $@"
	@mkdir -p "$(@D)"
	bin/extract "${RAW_FILE}" "$@" "${LENGTH}" "${OFFSET}"


clean:
	rm -rf ${OUTPUT_DIR}
.PHONY: clean

REMOTE_HOST := ${REMOTE_HOST}
REMOTE_DIR := ${REMOTE_DIR}

push:
	rsync -av --delete ./bin/ ${REMOTE_HOST}:${REMOTE_DIR}/bin/
.PHONY: push

pull-output:
	rsync -av ${REMOTE_HOST}:${REMOTE_DIR}/output/ ./output/
.PHONY: pull-output

pull-raw:
	rsync -av ${REMOTE_HOST}:${REMOTE_DIR}/src/ ./src/
	rsync -av ${REMOTE_HOST}:${REMOTE_DIR}/raw/ ./raw/
.PHONY: pull-raw
