PROJECT LAYOUT
- reports/report.txt is a visual output of the times recorded for the tasks 
- 'control.sh' is the base file that has all the code 

- use alias to run the script form anywhere. Add the following into
    'alias clock-in='bash path/to/control.sh'


FEATURES
  '--' and '@' are resrved for commands. 

  'project1 ' 

______________brain dump______________
run the code 
  [project_1] [start] [2:53pm]
or it grabs the time when the projcet was started like:
  [project-1] [start]
take the commands current time as the start time

the config.txt stores data from processing 

when all the times are in, use the keyword
  [generate]
program will add to report.txt and print out the content 
[project_#]    [porject_name]    [date_#yyyy mm dd]    [start_time]    [end_time]
[aaa$id4443]    [front_end]    [1111/12/13]    [10:06am]    [9:23pm]