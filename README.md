### You probably shouldn't use this, JFrog provides official docker support now:
**[https://bintray.com/jfrog/product/mission-control/download](https://bintray.com/jfrog/product/mission-control/download)**

Alpine based jfrog-mission-control docker container

# Environment customization and folders

`bin/mission-control.sh` uses the following system environment variables, so if needed docker environment variables should overwrite the defaults:

```
NAME=${NAME:-$(basename $0 .sh)}
JAVA_OPTIONS=${JAVA_OPTIONS:-"-server -Xmx2g -XX:+UseG1GC -Dfile.encoding=UTF8"}
MC_OPTIONS=${MC_OPTIONS:-"-Dmc.home=$MC_HOME -Dspring.config.location=$MC_HOME/etc/mission-control.properties"}
JAR=${JAR:-"$MC_HOME/lib/mission-control*.jar"}
PIDFILE=${PIDFILE:-$MC_HOME/run/$NAME.pid}
}
```

For reference, the following files are part of the default application directory

```
/home/mission-control/
/home/mission-control/lib
/home/mission-control/lib/mission-control.jar
/home/mission-control/bin
/home/mission-control/bin/mission-control.sh
/home/mission-control/bin/mission-control.bat
/home/mission-control/Third-Parties-Usage-About-Box.html
/home/mission-control/etc
/home/mission-control/etc/logback.xml
/home/mission-control/etc/mission-control.properties
/home/mission-control/JFMC_EULA.pdf
/home/mission-control/logs
```
