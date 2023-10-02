
# How to build a Java project?

# - Use an IDE? Yes, but you need lots of resources and a human to operate

# - Use a shell script? Ya, but there only small improvement

# - Use a specific tool? Great, but which one?

#  - Ant (https://ant.apache.org)?   XML, old, misses some nice features

#  - Maven (https://maven.apache.org)?  Sounds good, most used. Let's do it.

#  - Gradle (https://gradle.org)? Newer that maven, does not use XML but Groovy

#  (Groovy, and other languages, Kotlin)


## How to create and add a manifest file

The META-INF/MANIFEST.MF should include at least the following lines


Manifest-Version: 1.0
Main-Class: org.startsteps.Main


# Compile the human readable .java source code to bytecode .class files

javac org/startsteps/*.java


# Pack everything (bytecode/class-files!) into a single file

jar --create --file Application.jar --manifest=META-INF/MANIFEST.MF org/startsteps/*.class


# Run the program (very simple test)

#        _____________________________
#   java -classpath ./Application.jar org/startsteps/Main
    java -jar ./Application.jar

