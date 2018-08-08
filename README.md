# MinioSynchronizer
Deploy an headless app to Cloud Foundry to keep Minio (S3) buckets synchronized.

Application will monitor a source bucket and mirror updates to a target bucket

Credentials are stored in cloud foundry credhub






Register keys and secrets for source and target buckets in credhub as follows;

    cf create-service credhub default miniocreds -c '{ "Minio1Key": "randomaccesskey", "Minio1Secret":"randomsecretkey", "Minio2Key": "randomaccesskey", "Minio2Secret":"randomsecretkey"}'



Ensure you set an environment variable for the credhub SI used - CredentialsSIName


