# Moroc - work day time scheduler

## Usage

```shell
# Set the beginning of a work day
$ moroc hi

# Show the timetable for the day
$ moroc table

# Set the end of a work day
$ moroc bye

# Take a break
$ moroc break

# Output moroc settings
$ moroc settings

# Set specific setting
$ moroc set <SETTING-NAME>

# Get help
$ moroc help
```

## Available settings

| Name | Description | Default value |
| ---- | ----------- | ------------- |
| day\_time | Amount of hours in a work day | 8 |
| dinner\_time | Amount of hours for a dinner | 1 |
| break\_time | Amount of minutes for a break | 20 |
| break\_amount | Amount of breaks for a day | 4 |
