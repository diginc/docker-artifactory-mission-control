Alpine based jfrog-mission-control docker container

# Environment customization and folders

Updated: v1.0

`bin/mission-control.sh` mentions the following environment variables which can be overwritten:

```
setup_environment(){
    NAME=${NAME:-$(basename $0 .sh)}
    MCBINDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    export MC_HOME="$(cd "$(dirname "${MCBINDIR}")" && pwd)"
    #MC_HOME=${MC_HOME:-$(dirname $0|sed 's-/bin$--')}
    JAVA_OPTIONS=${JAVA_OPTIONS:-"-server -Xmx2g -XX:+UseG1GC -Dfile.encoding=UTF8"}
    MC_OPTIONS=${MC_OPTIONS:-"-Dmc.home=$MC_HOME -Dspring.config.location=$MC_HOME/etc/mission-control.properties"}
    JAR=${JAR:-"$MC_HOME/lib/mission-control*.jar"}
    PIDFILE=${PIDFILE:-$MC_HOME/run/$NAME.pid}
}
```

The following files are part of the default application directory

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
