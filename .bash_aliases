renew-ssl() {
	mkdir -p /tmp/letsencrypt-eustasy
	~/letsencrypt/letsencrypt-auto certonly --server https://acme-v01.api.letsencrypt.org/directory -a webroot --webroot-path=/tmp/letsencrypt-eustasy --agree-tos $1 $2 $3 $4
	sudo service nginx reload
}
