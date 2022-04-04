echo | \
    openssl s_client -servername backend-api01 -connect backend-api01:4443 2>/dev/null | \
    openssl x509 -text