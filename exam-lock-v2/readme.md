## Exam Lock on a Mac
This method allows you put a Mac into **Exam Mode** by disabling Internet access for the `exam` user on the Mac.

This edition of the exam lock requires the computer to have an `exam` user.

#### To Install:
1. Copy the 3 files (`exam.conf`, `exam.sh`, and `login-hook.sh`) to the /usr/local folder of the machine. 
2. In Terminal, using an account with admin rights, run `sudo sh /usr/local/login-hook.sh`


