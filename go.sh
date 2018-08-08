#!/bin/bash 
      export Minio1Key=$(echo $VCAP_SERVICES | jq -r ".credhub[] | select(.instance_name=\"$CredentialsSIName\").credentials.Minio1Key") \
 &&   export Minio1Secret=$(echo $VCAP_SERVICES | jq -r ".credhub[] | select(.instance_name=\"$CredentialsSIName\").credentials.Minio1Secret") \
 &&   export Minio2Key=$(echo $VCAP_SERVICES | jq -r ".credhub[] | select(.instance_name=\"$CredentialsSIName\").credentials.Minio2Key") \
 &&   export Minio2Secret=$(echo $VCAP_SERVICES | jq -r ".credhub[] | select(.instance_name=\"$CredentialsSIName\").credentials.Minio2Secret") \
 &&   ./mc config host add minio1 $Minio1Host $Minio1Key $Minio1Secret \
 &&   ./mc config host add minio2 $Minio2Host $Minio2Key $Minio2Secret \
 &&   ./mc mirror -w minio1/$Minio1Bucket minio2/$Minio2Bucket
