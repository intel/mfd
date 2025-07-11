FROM python:3.13-slim

# Create a non-root user and set home directory
RUN useradd --create-home appuser

RUN pip install --no-cache-dir \
    pytest \
    mfd-base-tool==2.7.0 \
    mfd-cli-client==1.11.0 \
    mfd-code-quality==1.2.0 \
    mfd-common-libs==1.11.0 \
    mfd-connect==7.12.0 \
    mfd-const==0.23.0 \
    mfd-dcb==1.18.0 \
    mfd-devcon==2.0.0 \
    mfd-dmesg==1.20.0 \
    mfd-esxi==3.2.0 \
    mfd-ethtool==3.14.0 \
    mfd-event-log==0.9.0 \
    mfd-ftp==1.8.0 \
    mfd-host==2.0.0 \
    mfd-hyperv==2.1.0 \
    mfd-kernel-namespace==1.8.0 \
    mfd-kvm==3.12.0 \
    mfd-libibverbs-utils==1.7.0 \
    mfd-model==0.9.0 \
    mfd-mount==1.8.0 \
    mfd-network-adapter==14.0.0 \
    mfd-osd-control==0.9.0 \
    mfd-package-manager==3.0.0 \
    mfd-packet-capture==2.16.0 \
    mfd-ping==1.15.0 \
    mfd-powermanagement==1.12.0 \
    mfd-serial==1.7.0 \
    mfd-switchmanagement==2.18.0 \
    mfd-sysctl==1.6.0 \
    mfd-traffic-manager==1.18.0 \
    mfd-typing==1.23.0 \
    mfd-win-registry==1.17.0 \
    pytest-mfd-config==3.25.0 \
    pytest-mfd-logging==1.24.0
# Expose shell as the default command
USER appuser
CMD ["/bin/bash"]
