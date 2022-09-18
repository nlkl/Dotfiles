sudo mv /opt/Citrix/ICAClient/keystore/cacerts /opt/Citrix/ICAClient/keystore/cacerts_bak
sudo ln -s /etc/ssl/certs /opt/Citrix/ICAClient/keystore/cacerts
sudo /opt/Citrix/ICAClient/util/ctx_rehash
