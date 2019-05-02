My first attempt with Robot Framework.   

Library used: Selenium2Library 
IDE: ~~Eclipse with RED plugin~~ (OLD) Pycharm (NEW)
Scripting Language: Python  

The project contains the following robot test suites:  
* Simple Tests
    * MyFirstTest - Very basic web navigation 
    * SearchFlightRobot - Referenced from Internet 
    * Amazon_Simple - Just with Test cases and Settings (very basic for beginners to understand) 
    * Amazon_Advanced - Progressed a bit from the Simple Test Suite 
* Guru99_Automation - Automating the guru99's sample web banking   

Run Command: _`robot -d Results Guru99WebAutomation.robot && robotmetrics --inputpath ./Results/`_

-d for storing the results in the "Results" directory
robotmetrics will provide a nice report which reads the default output files from "Results" directory

PS: I'm a beginner in Robot Framework. I will keep adding different test suites as i progress

