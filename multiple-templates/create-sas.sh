expiry=$(date -d "15 minutes" '+%Y-%m-%dT%H:%MZ')

sas=$(az storage container generate-sas --account-name $storage -n deploy --https-only --permissions r --expiry $expiry)