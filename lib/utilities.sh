#!/bin/bash

where_are_you() {

    PWD=$(pwd)
    if [[ $1 ]]; then
        PATTERN=$1
    else
        echo -e "${BLUE_STYLE}${PWD} Bonjour,${RAZ_STYLE}"
        echo -ne "${BLUE_STYLE}Saisissez un mot, ou une liste de mot au format : mot1|mot2|mot3 
# ${RAZ_STYLE}"
        read PATTERN
    fi
    echo -e "${BLUE_STYLE}-------------${PROMPT_STYLE}RÉSULTATS${BLUE_STYLE}----------------${RAZ_STYLE}"
    grep --color=always -Ril "${PATTERN}" | egrep --color=always -rin "${PATTERN}"
    echo -e "${BLUE_STYLE}--------------------------------------${RAZ_STYLE}"
    echo -e "${PROMPT_STYLE}# Fin de la recherche${RAZ_STYLE}"
    play_sound
    read EXIT

}

gitmojis() {
    prompt() (
        echo -e "\e[38;5;82m$*\e[0m"
    )
    prompt "[⚡️ ${ORANGE_STYLE} :zap: ${GREEN_STYLE}]"
    prompt "[🔥 ${ORANGE_STYLE} :fire: ${GREEN_STYLE}]"
    prompt "[🐛 ${ORANGE_STYLE} :bug: ${GREEN_STYLE}]"
    prompt "[🚑️ ${ORANGE_STYLE} :ambulance: ${GREEN_STYLE}]"
    prompt "[✨ ${ORANGE_STYLE} :sparkles: ${GREEN_STYLE}]"
    prompt "[📝 ${ORANGE_STYLE} :memo: ${GREEN_STYLE}]"
    prompt "[🚀 ${ORANGE_STYLE} :rocket: ${GREEN_STYLE}]"
    #prompt "[💄 ${ORANGE_STYLE} :lipstick: ${GREEN_STYLE}]"
    prompt "[🎉 ${ORANGE_STYLE} :tada: ${GREEN_STYLE}]"
    prompt "[✅ ${ORANGE_STYLE} :white_check_mark: ${GREEN_STYLE}]"
    #prompt "[🔒️ ${ORANGE_STYLE} :lock: ${GREEN_STYLE}]"
    #prompt "[🔐 ${ORANGE_STYLE} :closed_lock_with_key: ${GREEN_STYLE}]"
    #prompt "[🔖 ${ORANGE_STYLE} :bookmark: ${GREEN_STYLE}]"
    prompt "[🚨 ${ORANGE_STYLE} :rotating_light: ${GREEN_STYLE}]"
    prompt "[🚧 ${ORANGE_STYLE} :construction: ${GREEN_STYLE}]"
    #prompt "[💚 ${ORANGE_STYLE} :green_heart: ${GREEN_STYLE}]"
    #prompt "[⬇️ ${ORANGE_STYLE} :arrow_down: ${GREEN_STYLE}]"
    #prompt "[⬆️ ${ORANGE_STYLE} :arrow_up: ${GREEN_STYLE}]"
    #prompt "[📌 ${ORANGE_STYLE} :pushpin: ${GREEN_STYLE}]"
    prompt "[👷 ${ORANGE_STYLE} :construction_worker: ${GREEN_STYLE}]"
    prompt "[📈 ${ORANGE_STYLE} :chart_with_upwards_trend: ${GREEN_STYLE}]"
    prompt "[♻️ ${ORANGE_STYLE} :recycle: ${GREEN_STYLE}]"
    #prompt "[➕ ${ORANGE_STYLE} :heavy_plus_sign: ${GREEN_STYLE}]"
    #prompt "[➖ ${ORANGE_STYLE} :heavy_minus_sign: ${GREEN_STYLE}]"
    prompt "[🔧 ${ORANGE_STYLE} :wrench: ${GREEN_STYLE}]"
    prompt "[🔨 ${ORANGE_STYLE} :hammer: ${GREEN_STYLE}]"
    #prompt "[🌐 ${ORANGE_STYLE} :globe_with_meridians: ${GREEN_STYLE}]"
    prompt "[✏️ ${ORANGE_STYLE} :pencil2: ${GREEN_STYLE}]"
    #prompt "[💩 ${ORANGE_STYLE} :poop: ${GREEN_STYLE}]"
    #prompt "[⏪️ ${ORANGE_STYLE} :rewind: ${GREEN_STYLE}]"
    #prompt "[🔀 ${ORANGE_STYLE} :twisted_rightwards_arrows: ${GREEN_STYLE}]"
    prompt "[📦️ ${ORANGE_STYLE} :package: ${GREEN_STYLE}]"
    prompt "[👽️ ${ORANGE_STYLE} :alien: ${GREEN_STYLE}]"
    prompt "[🚚 ${ORANGE_STYLE} :truck: ${GREEN_STYLE}]"
    #prompt "[📄 ${ORANGE_STYLE} :page_facing_up: ${GREEN_STYLE}]"
    #prompt "[💥 ${ORANGE_STYLE} :boom: ${GREEN_STYLE}]"
    #prompt "[🍱 ${ORANGE_STYLE} :bento: ${GREEN_STYLE}]"
    #prompt "[♿️ ${ORANGE_STYLE} :wheelchair: ${GREEN_STYLE}]"
    prompt "[💡 ${ORANGE_STYLE} :bulb: ${GREEN_STYLE}]"
    prompt "[🍻 ${ORANGE_STYLE} :beers: ${GREEN_STYLE}]"
    #prompt "[💬 ${ORANGE_STYLE} :speech_balloon: ${GREEN_STYLE}]"
    #prompt "[🗃️ ${ORANGE_STYLE} :card_file_box: ${GREEN_STYLE}]"
    #prompt "[🔊 ${ORANGE_STYLE} :loud_sound: ${GREEN_STYLE}]"
    #prompt "[🔇 ${ORANGE_STYLE} :mute: ${GREEN_STYLE}]"
    #prompt "[👥 ${ORANGE_STYLE} :busts_in_silhouette: ${GREEN_STYLE}]"
    #prompt "[🚸 ${ORANGE_STYLE} :children_crossing: ${GREEN_STYLE}]"
    #prompt "[🏗️ ${ORANGE_STYLE} :building_construction: ${GREEN_STYLE}]"
    #prompt "[📱 ${ORANGE_STYLE} :iphone: ${GREEN_STYLE}]"
    #prompt "[🤡 ${ORANGE_STYLE} :clown_face: ${GREEN_STYLE}]"
    #prompt "[🥚 ${ORANGE_STYLE} :egg: ${GREEN_STYLE}]"
    prompt "[🙈 ${ORANGE_STYLE} :see_no_evil: ${GREEN_STYLE}]"
    #prompt "[📸 ${ORANGE_STYLE} :camera_flash: ${GREEN_STYLE}]"
    prompt "[⚗️ ${ORANGE_STYLE} :alembic: ${GREEN_STYLE}]"
    prompt "[🔍️ ${ORANGE_STYLE} :mag: ${GREEN_STYLE}]"
    #prompt "[🏷️ ${ORANGE_STYLE} :label: ${GREEN_STYLE}]"
    #prompt "[🌱 ${ORANGE_STYLE} :seedling: ${GREEN_STYLE}]"
    #prompt "[🚩 ${ORANGE_STYLE} :triangular_flag_on_post: ${GREEN_STYLE}]"
    #prompt "[🥅 ${ORANGE_STYLE} :goal_net: ${GREEN_STYLE}]"
    #prompt "[💫 ${ORANGE_STYLE} :dizzy: ${GREEN_STYLE}]"
    #prompt "[🗑️ ${ORANGE_STYLE} :wastebasket: ${GREEN_STYLE}]"
    #prompt "[🛂 ${ORANGE_STYLE} :passport_control: ${GREEN_STYLE}]"
    #prompt "[🩹 ${ORANGE_STYLE} :adhesive_bandage: ${GREEN_STYLE}]"
    #prompt "[🧐 ${ORANGE_STYLE} :monocle_face: ${GREEN_STYLE}]"
    prompt "[⚰️ ${ORANGE_STYLE} :coffin: ${GREEN_STYLE}]"
    prompt "[🧪 ${ORANGE_STYLE} :test_tube: ${GREEN_STYLE}]"
    #prompt "[👔 ${ORANGE_STYLE} :necktie: ${GREEN_STYLE}]"
    prompt "[🩺 ${ORANGE_STYLE} :stethoscope: ${GREEN_STYLE}]"
    #prompt "[🧱 ${ORANGE_STYLE} :bricks: ${GREEN_STYLE}]"
    #prompt "[🧑‍💻 ${ORANGE_STYLE} :technologist: ${GREEN_STYLE}]"
    prompt "[💸 ${ORANGE_STYLE} :money_with_wings: ${GREEN_STYLE}]"
    #prompt "[🧵 ${ORANGE_STYLE} :thread: ${GREEN_STYLE}]"
    #prompt "[🦺 ${ORANGE_STYLE} :safety_vest: ${GREEN_STYLE}]"
    echo
}

private_common_mci_start() {
    echo -e "${ORANGE_STYLE}==================================================================\n$(pwd)${RAZ_STYLE}"
    cd ${GIT_ROOT}
    ls
    read -p 'Project :' PROJECT
    cd $PROJECT
    echo -e "${ORANGE_STYLE}==================================================================\n$(pwd)${RAZ_STYLE}"
    git fetch
    git add .
    git log --graph --color | head -n 40
    git diff --staged
    git status
    echo -e "${RED_STYLE} ==================================================================\n!!! remove unwanted additions !!!\n================================================================== ${RAZ_STYLE}"
    echo -e "${ORANGE_STYLE}==================================================================${RAZ_STYLE}"
    echo -e "${BLUE_STYLE} Cleaning .... ${RAZ_STYLE}"
    mvn clean >clean_install.log
    if [[ $? > 0 ]]; then
        echo -e "${RED_STYLE} clean failed : ${RAZ_STYLE}"
        tail -n 20 clean_install.log
    fi
    echo -e "${ORANGE_STYLE}==================================================================${RAZ_STYLE}"
    echo -e "${GREEN_STYLE} egrep --color=ALWAYS -i '(error|warn|fatal|exception)' $(pwd)/clean_install.log ${RAZ_STYLE}"
    echo -e "${GREEN_STYLE} tail -f $(pwd)/clean_install.log ${RAZ_STYLE}"

}
private_common_mci_end() {
    echo -e "${ORANGE_STYLE}==================================================================${RAZ_STYLE}"
    tail -n 200 clean_install.log
    #countErrors
    echo -e "${ORANGE_STYLE}==================================================================${RAZ_STYLE}"
}

countErrors() {

    display_if_ht_zero() (
        #label, value, color
        if [[ $2 > 0 ]]; then
            echo -e "$3 $1 $2 ${RAZ_STYLE}"
        fi

    )

    if [[ $1 ]]; then
        TARGET=$1
    else
        TARGET=clean_install.log
    fi
    error=$(egrep -i "error" ${TARGET} | wc -l)
    exception=$(egrep -i "exception" ${TARGET} | wc -l)
    fatal=$(egrep -i "fatal" ${TARGET} | wc -l)
    warn=$(egrep -i "warn" ${TARGET} | wc -l)
    info=$(egrep -i "info" ${TARGET} | wc -l)
    debug=$(egrep -i "debug" ${TARGET} | wc -l)
    echo "-----------------FOR DEBUG--------------------------------"
    display_if_ht_zero "error" $error ${RED_STYLE}
    display_if_ht_zero "exception" $exception ${RED_STYLE}
    display_if_ht_zero "fatal" $fatal ${RED_STYLE}
    display_if_ht_zero "warn" $warn ${ORANGE_STYLE}
    display_if_ht_zero "info" $info ${GREEN_STYLE}
    display_if_ht_zero "debug" $debug ${GREEN_STYLE}
    echo "-----------------FOR DEBUG--------------------------------"

}

mci() {
    private_common_mci_start
    echo -e "${BLUE_STYLE} [${GREEN_STYLE}START${BLUE_STYLE}] started at $(date) ${RAZ_STYLE}"
    a_sub_task=$(time mvn install $@ >>clean_install.log &)
    wait $a_sub_task
    private_common_mci_end
}
mci_debug() {
    private_common_mci_start
    echo -e "${BLUE_STYLE} [${GREEN_STYLE}START${BLUE_STYLE}] started at $(date) ${RAZ_STYLE}"
    a_sub_task=$(time mvn install --debug $@ >>clean_install.log &)
    wait $a_sub_task
    private_common_mci_end
}
mci_no_test() {
    private_common_mci_start
    echo -e "${BLUE_STYLE} [${GREEN_STYLE}START${BLUE_STYLE}] started at $(date) ${RAZ_STYLE}"
    a_sub_task=$(time mvn install -DskipTests $@ >>clean_install.log &)
    wait $a_sub_task
    private_common_mci_end
}
play_sound() {
    powershell -c "(explorer.exe C:\Users\T357275\Downloads\Alarm.mp3).PlaySync();"
}
smci() {
    mci
    play_sound
}

smci_no_test() {
    mci_no_test
    play_sound
}

update_bashrc() {
    code ~/Desktop/BASHRC/utilities.sh
    code ~/Desktop/BASHRC/capi_specifics.sh
    read -p "..." ok
    (~/AppData/Local/Programs/Git/git-bash.exe &)
    echo "exit"
    exit 0 
}

# TODO : dynamically setup jdk
#java8() {
#    export JAVA_HOME="/c/devtools/jdk8u382-b05"
#    export PATH="$JAVA_HOME/bin:$PATH"
#    clear_bash no_clear
#}

clear_bash() {
    source ~/.bashrc
    no_clear=$1
    if [[ -z ${no_clear} ]]; then
        clear
    fi
    echo -e "${ORANGE_STYLE}=${PURPLE_STYLE} JAVA ${ORANGE_STYLE}=============================================================${RAZ_STYLE}"
    java -version
    echo -e "${ORANGE_STYLE}=${PURPLE_STYLE} MAVEN ${ORANGE_STYLE}============================================================${RAZ_STYLE}"
    mvn -version
    echo -e "${ORANGE_STYLE}====================================================================${RAZ_STYLE}"
}

depgrep() {
    # TODO store results rather than refetch them
    if [[ $1 ]]; then
        PATTERN=$1
    else
        echo -e "${BLUE_STYLE}${PWD} Bonjour,${RAZ_STYLE}"
        echo -ne "${BLUE_STYLE}Saisissez un mot, ou une liste de mot au format : mot1|mot2|mot3 
# ${RAZ_STYLE}"
        read PATTERN
    fi
    mvn dependency:tree
    echo -e "# ${GREEN_STYLE} RESULTS : ${RAZ_STYLE}"
    mvn dependency:tree | egrep --color=always "${PATTERN}" | sort
    play_sound

}
todolist() {
    # TODO Redo
    code ${TODOFILE}
    echo -e "${GREEN_STYLE} type '${BLUE_STYLE}bash${GREEN_STYLE}' to display the todolist\n    ... or '${BLUE_STYLE}rm ${TODOFILE}${GREEN_STYLE}' ${RAZ_STYLE}"
}


clean_m2() {
    PATH_TO_M2="~/.m2/repository"
    cd ${PATH_TO_M2}
    ls -Rf | grep '.jar' | grep -v '.sha1' | wc -l

    rm -rf ${PATH_TO_M2}/* && echo "OK" || echo "KO"}


}

hello() {

    echo -e "${BLUE_STYLE}Hello $(whoami), how are you today ?${RAZ_STYLE}"
    echo
    sleep 1
    echo -e "${ORANGE_STYLE} Starting work tools${RAZ_STYLE}"
    echo -e "${GREEN_STYLE} Starting :${RAZ_STYLE}${BLUE_STYLE} idea64.exe ${RAZ_STYLE}"
    start 'C:\Users\T357275\Desktop\work\tools\idea\bin\idea64.exe'
    echo -e "${GREEN_STYLE} Starting :${RAZ_STYLE}${BLUE_STYLE} gitkraken.exe ${RAZ_STYLE}"
    start 'C:\Users\T357275\AppData\Local\gitkraken\gitkraken.exe'
    update_bashrc
}


