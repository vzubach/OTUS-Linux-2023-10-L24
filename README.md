### OTUS-Linux-2023-10-L24 | Сбор и анализ логов

В корне репозитория Vgarantfile в котором поднимается две ВМ с названиями: web и log.<br/>
В каждой ВМ отдельно запускаются файлы скрипта по настройке.<br/>

Для ВМ web:
- устанавливается сервер nginx и плагины для auditd
- устанавливаются файлы конфигурации для отправки на лог-сервер логов ошибок и доступа сервера nginx и логов аудита изменения конфигурации сервера nginx
- стартуют соответсвующие сервисы<br/>

Для ВМ log:
- устанавливаются файлы конфигурации для rsyslog для получения логов с web-сервера
- устанавливаются файлы конфигурации для auditd для получения логов аудита
- перезапускаются соответствующие сервисы.