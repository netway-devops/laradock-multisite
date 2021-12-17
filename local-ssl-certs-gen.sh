#! /bin/bash


mkcert -install

declare -a arr=("cms.main"
                "cdn.rvtheme.com.main"
                "license3.rvglobalsoft.com.main"
                "netway.co.th.main"
                "billing.netway.co.th.main"
                "rvglobalsoft.com.main"
                "client.netway.co.th.main"
                )

for i in "${arr[@]}"
do
   mkcert "$i"
   mv "./${i}.pem" "./apache2/local-ssl-certs/"
   mv "./${i}-key.pem" "./apache2/local-ssl-certs/"
done

echo """
==================================================
  Successful
==================================================
"""
