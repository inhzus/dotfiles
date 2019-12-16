function sp
	env http_proxy=$PROXY https_proxy=$PROXY ftp_proxy=$PROXY rsync_proxy=$PROXY all_proxy=$PROXY HTTP_PROXY=$PROXY HTTPS_PROXY=$PROXY FTP_PROXY=$PROXY RSYNC_PROXY=$PROXY ALL_PROXY=$PROXY $argv
end
