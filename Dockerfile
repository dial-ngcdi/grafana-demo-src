FROM grafana/grafana:5.4.3
RUN mkdir -p /var/lib/grafana/dashboards
ENV GF_PATHS_DASHB="/var/lib/grafana/dashboards"
COPY datasources-config.yaml $GF_PATHS_PROVISIONING/datasources
COPY dashboards-config.yaml $GF_PATHS_PROVISIONING/dashboards
COPY sckl-demo-dashboard.json $GF_PATHS_DASHB
COPY defaults.ini conf
