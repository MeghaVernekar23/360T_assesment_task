# 360T | QA Assesment Task

## 📜 About

360T assessment task is a small task given to check the automation skill ability of a QA engineer.

## Source Code Structure

```
360T AG ASSESMENT TASK

|-- 360T_assesment_task								

	|-- src
        |-- main
            |-- java
                |-- framework
                    
                    |-- Base.java                   # file is a core class that provides essential setup 
                                                    and configuration for the test framework.
                    |-- TelephoneDialPad.java       # main file which contains Telephone dail pad logic
                    

        |-- test
            |-- java
                |-- runner
                    |-- CucumberTestRunner.java     # file is the main test runner for executing 
                                                    Cucumber feature files.
                |-- steps
                    |-- TelephoneDialPadSteps.java  # file contains the step definitions for the
                                                    test scenarios defined in the TelephoneDialPad.feature.
            |-- resources
                |-- features
                    |-- TelephoneDialPad.feature    # feature file test scenarios for the 'Telephone dail pad logic'
                |-- extent.properties               # file configures settings for the Extent Reports
                                                    used in test reporting.
                |-- spark-config.xml                # file provides advanced customization options 
                                                    for Extent Spark Reports.
	|-- pom.xml                                     # file manages project dependencies and 
                                                    build configurations using Maven.

|-- .gitignore				
|-- Readme.md
-	
```

## 📟 Recommended Setup

### Prerequisite:

Please make sure all the prerequisites are properly installed. 

- [VSCode](https://code.visualstudio.com/)
- [JAVA v8.0](https://www.oracle.com/in/java/technologies/javase/javase8-archive-downloads.html)
- [MAVEN](https://maven.apache.org/)

### Recommended VSCode Extensions

To enhance productivity and streamline the development experience, it is recommended to install the following VSCode extensions:

- **[Extension Pack for Java by Microsoft](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack)**

- **[Cucumber by Cucumber](https://marketplace.visualstudio.com/items?itemName=alexkrechik.cucumberautocomplete)**

- **[Maven for Java by Microsoft](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-maven)**


## ⚙ Project Setup

## Setting up Java and Maven Paths

To use Java and Maven effectively, make sure you set up their paths in your environment variables. Here’s how:

### Setting up Java Path

- **Locate your Java installation path** (e.g., `C:\Program Files\Java\jdk-8.0.1` for Windows).

- Add the path to the `JAVA_HOME` environment variable.

   - **Windows**:
     - Go to **Control Panel** > **System and Security** > **System** > **Advanced System Settings**.
     - Click on **Environment Variables**.
     - Under **System Variables**, click **New** and add:
       - **Variable Name**: `JAVA_HOME`
       - **Variable Value**: Path to your Java installation (e.g., `C:\Program Files\Java\jdk-8.0.1`)
     - Find the **Path** variable, click **Edit**, and add `%JAVA_HOME%\bin`.

   - **Mac/Linux**:
     - Open your terminal and edit the `~/.bash_profile` (or `~/.bashrc` or `~/.zshrc` depending on your shell).
     - Add the following lines:
       ```bash
       export JAVA_HOME=/path/to/java
       export PATH=$JAVA_HOME/bin:$PATH
       ```
     - Save and close the file, then run `source ~/.bash_profile` to apply the changes.

- **Verify**:
   - Open a new terminal or command prompt and type:
     ```bash
     java -version
     ```

### Setting up Maven Path

1. **Locate your Maven installation path** (e.g., `C:\Program Files\Apache\apache-maven-3.8.6`).
2. Add the path to the `MAVEN_HOME` environment variable.

   - **Windows**:
     - Open **Environment Variables** as in the previous step.
     - Under **System Variables**, click **New** and add:
       - **Variable Name**: `MAVEN_HOME`
       - **Variable Value**: Path to your Maven installation (e.g., `C:\Program Files\Apache\apache-maven-3.8.6`)
     - Find the **Path** variable, click **Edit**, and add `%MAVEN_HOME%\bin`.

   - **Mac/Linux**:
     - Open your terminal and edit the `~/.bash_profile` (or `~/.bashrc` or `~/.zshrc`).
     - Add the following lines:
       ```bash
       export MAVEN_HOME=/path/to/maven
       export PATH=$MAVEN_HOME/bin:$PATH
       ```
     - Save and close the file, then run `source ~/.bash_profile`.

3. **Verify**:
   - Open a new terminal or command prompt and type:
     ```bash
     mvn -version
     ```

You should now have both Java and Maven set up and accessible from any terminal session.


### Setup and Run the project

> Before you proceed to install the setup, please make sure the above section of installting and setting > java and maven paths are successful.  

- **Clone the Git repository**

  ```bash
  git clone https://github.com/MeghaVernekar23/360T_assesment_task.git
  ```

- **Navigate to the project directory:**

  ```bash
  cd 360T_assesment_task
  ```

- **Install all necessary packages:**

  ```bash
  mvn clean install
  ```

- **Run the runner file:**

  ```bash
  mvn -Dtest=CucumberTestRunner test
  ```

- **Check generated report:** <br/>
    You can find the test results in the below folder
    ```bash
    test-output/ExtentReport.html
    ```
