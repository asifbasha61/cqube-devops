#!/bin/bash

MY_PATH=microservices
REPOSITORY=staging

cd "$MY_PATH"

if ! [[ -d spec-ms ]]; then
	git clone https://github.com/Sunbird-cQube/spec-ms.git
	cd "spec-ms"
	git checkout $REPOSITORY
	cd ../../
else
	cd "spec-ms"
	git stash
	git checkout $REPOSITORY
	git pull
        cd ../../
fi

cd "$MY_PATH"
if ! [[ -d ingestion-ms ]]; then
	git clone https://github.com/Sunbird-cQube/ingestion-ms.git
	cd "ingestion-ms"
	git checkout $REPOSITORY
	cd ../../
else
	cd "ingestion-ms"
	git stash
	git checkout $REPOSITORY
	git pull
	cd ../../
fi

cd "$MY_PATH"
if ! [[ -d generator-ms ]]; then
	git clone https://github.com/Sunbird-cQube/generator-ms.git
	cd "generator-ms"
	git checkout $REPOSITORY
	cd ../../
else 
	cd "generator-ms"
	git stash
	git checkout $REPOSITORY
	git pull
	cd ../../

fi

cd "$MY_PATH"
if ! [[ -d dashboard-ms ]]; then
        git clone https://github.com/Sunbird-cQube/dashboard-ms.git
        cd "dashboard-ms"
        git checkout $REPOSITORY
        cd ../../
else
        cd "dashboard-ms"
	git stash
        git checkout $REPOSITORY
        git pull
        cd ../../

fi

cd "$MY_PATH"
if ! [[ -d query-builder ]]; then
        git clone https://github.com/Sunbird-cQube/query-builder.git
        cd "query-builder"
        git checkout $REPOSITORY
        cd ../../
else
        cd "query-builder"
	git stash
        git checkout $REPOSITORY
        git pull
        cd ../../

fi

cd "$MY_PATH"
if ! [[ -d admin-dashboard-ms ]]; then
        git clone https://github.com/Sunbird-cQube/admin-dashboard-ms.git
        cd "admin-dashboard-ms"
        git checkout $REPOSITORY
        cd ../../
else
        cd "admin-dashboard-ms"
        git stash
        git checkout $REPOSITORY
        git pull
        cd ../../

fi

cd "$MY_PATH"
if ! [[ -d csv-parser-ms ]]; then
        git clone https://github.com/Sunbird-cQube/csv-parser-ms.git
        cd "csv-parser-ms"
        git checkout $REPOSITORY
        cd ../../
else
        cd "csv-parser-ms"
        git stash
        git checkout $REPOSITORY
        git pull
        cd ../../

fi
