[ldap-ui ldap web ui ](https://hub.docker.com/r/dnknth/ldap-ui)

![ldap-ui web ui ](https://github.com/dnknth/ldap-ui/blob/main/screenshot.png?raw=true)

docker run -p 127.0.0.1:5000:5000 \
    -e LDAP_URL=ldap://127.0.0.1:3389/ \
    -e BASE_DN=dc=example,dc=org dnknth/ldap-ui