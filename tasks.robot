# -*- coding: utf-8 -*-
# <img src="images/logo.svg" width="200" style="margin-top:20px">
#
# ## Image Search Robot
#
# ****
#
# The script is composed from 3 different cells you can see below.
#
# 👉 **Click on each cell, and then the `▸`, one after the other:**
# - The `▸` button is found in the icon toolbar
# - Clicking the cell and then the `▸` button readies the cell for process execution by *compiling* the cell
# - After the `*** Keyword ***` cell has been compiled it can be run by clicking the `Find Image` button that appears
# - Running `*** Tasks ***` actually runs the whole robot
# - Make sure all cells have been run by checking the `[ ]` indicator. If run, there's a number inside.

*** Settings ***
Documentation     My first robot!
Library           RPA.Browser
Task Teardown     Close All Browsers

*** Keyword ***
Find Image
    Open Available Browser    https://images.google.com
    Input Text    name:q    cute puppy
    Submit Form
    ${FIRST_IMAGE}=    Set Variable    css:div[data-ri=\"0\"]
    Wait Until Element Is Visible    ${FIRST_IMAGE}
    Screenshot    ${FIRST_IMAGE}

*** Tasks ***
Find an Image from Google Images
    Find Image
# ****
#
# Additional ways to run the robot:
#
# 👉 **Running all the cells in an open `.robot` file in one go by clicking `▸▸`:**
#    - The `▸▸` button is found in the icon toolbar
#    - This is known as '*running the notebook*' and will compile and execute all the cells in one go (without needing to click the `Find Image` button that appears)
#    - This run method will ask whether you want to '*Restart Kernel?*'... That's okay! You can click `Restart`
#
#
# 👉 **Running the main task configured for a robot by clicking `▸ Run Robot`:**
#    - The `▸ Run Robot` button is found at the top-right of the Lab
#    - The robot is run from a clean state in new virtual environment. Use this to verify everything is ready for production.
#    - The default *Task* for a project is configured in the [robot.yaml](./robot.yaml) file.
#    - In the [robot.yaml](./robot.yaml) file you have more control over your robot and can define multiple tasks.
#    - Robot's dependencies are defined in [conda.yaml](./conda.yaml) and applied automatically.
#
#
# ****
#
# 👉 Next, you may want to upload the robot to Robocorp Cloud. Press `Upload to Robocorp Cloud` and create free account!
#
# If you encounter an error, please make sure to update your browser to the latest version. For more troubleshooting tips, see https://robocorp.com/docs/troubleshooting.


