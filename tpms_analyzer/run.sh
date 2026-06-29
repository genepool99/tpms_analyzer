#!/usr/bin/with-contenv bashio

set -e

REFRESH_WEBHOOK_ID="$(bashio::config 'refresh_webhook_id')"
VEHICLE_MAP_EDIT_WEBHOOK_ID="$(bashio::config 'vehicle_map_edit_webhook_id')"
LOG_PATH="$(bashio::config 'log_path')"
VEHICLE_MAP_PATH="$(bashio::config 'vehicle_map_path')"

DATA_DIR="/data"

export TPMS_LOG_PATH="${LOG_PATH}"
export TPMS_BASE_DIR="${DATA_DIR}"
export TPMS_DB_PATH="${DATA_DIR}/tpms.sqlite"
export TPMS_OUT_DIR="${DATA_DIR}/output"
export TPMS_VEHICLE_MAP_PATH="${VEHICLE_MAP_PATH}"
export TPMS_REPORT_PATH="/config/www/rtl_433/tpms_report.html"
export TPMS_STATUS_PATH="/config/www/rtl_433/tpms_status.json"
export TPMS_REFRESH_WEBHOOK_ID="${REFRESH_WEBHOOK_ID}"
export TPMS_VEHICLE_MAP_EDIT_WEBHOOK_ID="${VEHICLE_MAP_EDIT_WEBHOOK_ID}"

bashio::log.info "Starting TPMS Analyzer"
bashio::log.info "Using TPMS log path: ${TPMS_LOG_PATH}"
bashio::log.info "Using TPMS vehicle map path: ${TPMS_VEHICLE_MAP_PATH}"

cd /app
python3 analyze_tpms.py
bashio::log.info "TPMS Analyzer complete"