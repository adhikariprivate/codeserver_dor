FROM gitpod/openvscode-server

EXPOSE 3000

ENTRYPOINT [ "/bin/sh", "-c", "exec ${OPENVSCODE_SERVER_ROOT}/bin/openvscode-server --host 0.0.0.0 --connection-token \"$TOKEN_VAR\" \"${@}\"", "--" ]
