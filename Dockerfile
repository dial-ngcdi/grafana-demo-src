FROM grafana/grafana:5.3.2
RUN mkdir -p /var/lib/grafana/dashboards
ENV GF_PATHS_DASHB="/var/lib/grafana/dashboards"
COPY defaults.ini conf
COPY datasources-config.yaml $GF_PATHS_PROVISIONING/datasources
COPY sckl-demo-dashboard.json $GF_PATHS_DASHB
