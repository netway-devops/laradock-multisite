#! /bin/bash


mkcert -install

declare -a arr=(
                "cms.main"
                "cdn.rvtheme.com.main"
                "license3.rvglobalsoft.com.main"
                "netway.co.th.main"
                "rvglobalsoft.com.main"
                "client.netway.co.th.main"
                "billing.netway.co.th.main"
                "client.netway.co.th.main"
                )

for i in "${arr[@]}"
do
   mkcert -cert-file ./apache2/local-ssl-certs/${i}.pem -key-file ./apache2/local-ssl-certs/${i}-key.pem $i localhost 127.0.0.1 ::1
done

echo """
==================================================
  Successful
==================================================
"""
