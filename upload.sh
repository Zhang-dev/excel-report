#!/bin/bash

source .env

echo "Refreshing excel data"
py refresh-excel.py

if [ -z "$USER_NAME" ];
then echo "No USER_NAME found in environment variables.";
elif [ -z "$USER_PASSWORD" ];
then echo "Please provide password as USER_PASSWORD.";
elif [ -z "$ATTACHMENT_FILE_NAME" ];
then echo "Please provide fullpath of your file as ATTACHMENT_FILE_NAME.";
elif [ -z "$CONFLUENCE_BASE_URL" ];
then echo "Please provide confluence base URL as CONFLUENCE_BASE_URL.";
elif [ -z "$PAGE_ID" ];
then echo "Please provide the confluence page ID as PAGE_ID.";
else echo "Uploading excel to the confluence space";
curl -v -u $USER_NAME:$USER_PASSWORD \
 -H "X-Atlassian-Token: nocheck" -F "file=@${ATTACHMENT_FILE_NAME}" -F "comment=File attached via REST API" -F "minorEdit=true" \
 -X POST ${CONFLUENCE_BASE_URL}/rest/api/content/${PAGE_ID}/child/attachment/${ATTACHMENT_ID}/data
fi

