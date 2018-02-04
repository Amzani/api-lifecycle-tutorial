SWAGGER_FILE_NAME=swagger.yml
APIARY_API_NAME=playvideoapi
APIARY_WORK_DIR=/mnt/workspace/
DOCKER_IMG=samz/apiarycli

.PHONY: prepare
prepare:
	@echo "Prepare"
	if [ "${APIARY_API_KEY}" -eq "" ]
	then
		@echo "APIARY_API_KEY is missing, please export your APIARY_API_KEY"
	fi
	#docker pull ${DOCKER_IMG}

.PHONY: api-stylecheck
api-stylecheck: prepare
	@echo ${APIARY_API_KEY}
	#docker run --rm -e APIARY_API_KEY=${APIARY_API_KEY} -v $(PWD):${APIARY_WORK_DIR} ${DOCKER_IMG} styleguide --add=${APIARY_WORK_DIR}/${SWAGGER_FILE_NAME}

.PHONY: api-publish
api-publish:
	@echo "Publish to apiary"
	#docker run --rm -e APIARY_API_KEY=${APIARY_API_KEY} -v $(PWD):${APIARY_WORK_DIR} ${DOCKER_IMG} publish --api-name=${APIARY_API_NAME} --path=${APIARY_WORK_DIR}/${SWAGGER_FILE_NAME}

.PHONY: api-tests
api-tests:
	@echo "Testing your API"
