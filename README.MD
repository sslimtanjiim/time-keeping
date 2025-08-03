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








- make cells; fuction to hand "padding" such that the cells look like 
	|   foo    |
here the "word" is bounded by 3 'space' padding 
	|   word   |
the total buffer between the pipes are 10 characters
the report should be formatted accodingly
-------------------------------------------------------------------------------
| project-name  |  time-start   |  time-stop    |    time-pent    |         |
-------------------------------------------------------------------------------
|   project-1   |    10:23am    |    3:29pm     |       5.1       |         |
|               |               |               |                 |         |





if space buffer is un even make the left side less thant the right  ->  |^^foob^^^|

	$str-1 = "project-32"
	$str-buff = format-buffer("str-1")
	string = '|' + $str-buff  + '|'

- each cell starts with a buffer of 5 spaces ^^^^^
  when the space character are less than 2, inclese the buffer by 5 space characters 
 |^^a^^|
 |^aab^|
 |^^^aabb^^^|
 |^^aabbcc^^|


\\\*********
after clocking in, users can use stack clock in times and the clockin recods can sort
and derrive the clock out times

	-------------------------------------------------------------------------------
	|  project-name  |  time-start   |  time-stop    |    time-pent    |         |
	-------------------------------------------------------------------------------
	|   project-1    |    10:23am    |               |                 |         |
	|   project-4    |    12:00pm    |               |                 |         |

here the project is expected to end at 12 pm and the project 4 is to start tracting from 12 as well
