# for all entities
#php ./bin/console-dev doctrine:mapping:import "SkyengMainBundle" xml --force

# for tables with prefix student
#php ./bin/console-dev doctrine:mapping:import "SkyengMainBundle" xml  --filter="Student*" --force

# for custom tables
php ./bin/console-dev doctrine:mapping:import "SkyengMainBundle" xml  --filter="StudentPersonalManagerRating|StudentContactRequestLog" --force
php ./bin/console-dev doctrine:mapping:convert annotation ./src --num-spaces=2 --force

# команда генерит классы, если есть готовые xml мапинги
php ./bin/console-dev doctrine:generate:entities SkyengMainBundle --path=./src --no-backup
#./bin/console doctrine:mapping:info