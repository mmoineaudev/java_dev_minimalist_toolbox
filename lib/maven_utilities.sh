ask_maven() {
    doc=' add $3 for last update check '

    groupId=$1
    artifactId=$2
    copyGID=${groupId}
    groupId=${groupId//.//}

    echo -e "${ORANGE_STYLE} MAVEN-CENTRAL ${RAZ_STYLE}"
    curl -s https://repo1.maven.org/maven2/${groupId}/${artifactId}/maven-metadata.xml # | tail -n -20
    is_in_maven=$?
    echo -e "${ORANGE_STYLE} NEXUS-CENTRAL ${RAZ_STYLE}"
    curl -s https://nexus.devnet.klm.com/repository/public/${groupId}/${artifactId}/maven-metadata.xml # | tail -n -20

    if [[ ! -z $3 ]]; then
        "/c/Program Files/Google/Chrome/Application/chrome.exe" "https://central.sonatype.com/artifact/${copyGID}/${artifactId}?smo=true"
    fi

    echo

}