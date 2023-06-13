<a name="br1"></a> 

**DevOps Skilling Up Program 2023**

**Lab 1 - Bash Shell Scripting**

**Shell Script to do a line count over ﬁles**

Create a Bash Shell script using functions to count the number of lines in text ﬁles located in

the current directory when:

● They belong to an owner OR

● When were created in a speciﬁc month

The shell script should accept the following options:

-o <owner>

To select ﬁles where the owner is <owner>

-m <month>

To select ﬁles where the creation month is <month>

When receiving invalid arguments, show help

Invalid arguments:

./countlines.sh

./countlines.sh -o owner -m month

Other arguments

./countlines.sh -x owner

Valid arguments:

**./countlines.sh -o jose.sandoval**

**Looking for files where the owner is: jose.sandoval**

**File: countlines.sh, Lines:**

**File: example1.txt, Lines:**

**File: example2.txt, Lines:**

**File: example4.txt, Lines:**

**55 countlines.sh**

**5 example1.txt**

**5 example2.txt**

**5 example4.txt**

<a name="br2"></a> 

**./countlines.sh -m Jun**

**Looking for files where the month is: Jun**

**File: countlines.sh, Lines:**

**File: example1.txt, Lines:**

**File: example2.txt, Lines:**

**File: example3.txt, Lines:**

**File: example4.txt, Lines:**

**55 countlines.sh**

**5 example1.txt**

**5 example2.txt**

**5 example3.txt**

**5 example4.txt**

**Hints**

● Use *getopts* command

● Use *stat* command

● You can use *awk* command to parse text



