FROM jenkins/jenkins:lts-jdk21

USER root

RUN mkdir -p /var/jenkins_home/.m2 && \
    cat > /var/jenkins_home/.m2/settings.xml <<'EOF' && \
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                              https://maven.apache.org/xsd/settings-1.0.0.xsd">

  <profiles>
    <profile>
      <id>optimized-repos</id>
      <repositories>
        <repository>
          <id>huaweicloud</id>
          <name>HuaweiCloud Maven</name>
          <url>https://repo.huaweicloud.com/repository/maven/</url>
          <releases>
            <enabled>true</enabled>
          </releases>
          <snapshots>
            <enabled>true</enabled>
          </snapshots>
        </repository>
        <repository>
          <id>central</id>
          <name>Maven Central</name>
          <url>https://repo.maven.apache.org/maven2</url>
          <releases>
            <enabled>true</enabled>
          </releases>
          <snapshots>
            <enabled>true</enabled>
          </snapshots>
        </repository>
      </repositories>
      <pluginRepositories>
        <pluginRepository>
          <id>huaweicloud-plugin</id>
          <name>HuaweiCloud Maven Plugin</name>
          <url>https://repo.huaweicloud.com/repository/maven/</url>
          <releases>
            <enabled>true</enabled>
          </releases>
          <snapshots>
            <enabled>true</enabled>
          </snapshots>
        </pluginRepository>
          <pluginRepository>
          <id>central-plugin</id>
          <name>Maven Central Plugin</name>
          <url>https://repo.maven.apache.org/maven2</url>
          <releases>
            <enabled>true</enabled>
          </releases>
          <snapshots>
            <enabled>true</enabled>
          </snapshots>
        </pluginRepository>
      </pluginRepositories>
    </profile>
  </profiles>

  <activeProfiles>
    <activeProfile>optimized-repos</activeProfile>
  </activeProfiles>

</settings>
EOF
    chown -R jenkins:jenkins /var/jenkins_home/.m2

USER jenkins