@echo off
for %%i in ("corder-service" "cproduct-service" "cuser-service") do (
    docker exec -it %%i flask db init
    docker exec -it %%i flask db migrate
    docker exec -it %%i flask db upgrade
)
