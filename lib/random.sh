#!/bin/bash

echo_rand_color_no_line_break() {
    attr=$(($RANDOM % 7))
    LG=($(seq 40 47))
    LG+=($(seq 100 107))
    LG+=(49)
    # echo "${LG[@]}"

    FG=($(seq 30 37))
    FG+=($(seq 90 97))
    FG+=(39)
    # echo "${FG[@]}"

    clfg=${FG[$RANDOM % ${#FG[@]}]}

    # reducing frequency of background change
    one_out_of_n=$(($RANDOM % 25))
    if [[ $one_out_of_n == 1 ]]; then
        cblg=${LG[$RANDOM % ${#LG[@]}]}
    else
        cblg=
    fi

    #echo "\e[${attr};${cblg};${clfg}m[ A ]\e[0"
    echo -ne " \e[${attr};${cblg};${clfg}m$@\e[0m"
}
echo_rand_color() {
    echo_rand_color "$@"
    echo
}
colors() {
    for clbg in {40..47} {100..107} 49; do
        #Foreground
        for clfg in {30..37} {90..97} 39; do
            #Formatting
            for attr in 0 1 2 4 5 7; do
                #Print the result
                echo -en "\e[${attr};${clbg};${clfg}m ^[${attr};${clbg};${clfg}m \e[0m"
            done
            echo #Newline
        done
    done
}

random_random_random() {
    words=(
        '⚡️'
        '🔥'
        '🐛'
        '🚑️'
        '✨'
        '📝'
        '🚀'
        '💄'
        '🎉'
        '✅'
        '🔒️'
        '🔐'
        '🔖'
        '🚨'
        '🚧'
        '💚'
        '⬇️'
        '⬆️'
        '📌'
        '👷'
        '📈'
        '♻️'
        '➕'
        '➖'
        '🔧'
        '🔨'
        '🌐'
        '✏️'
        '💩'
        '⏪️'
        '🔀'
        '📦️'
        '👽️'
        '🚚'
        '📄'
        '💥'
        '🍱'
        '♿️'
        '💡'
        '🍻'
        '💬'
        '🗃️'
        '🔊'
        '🔇'
        '👥'
        '🚸'
        '🏗️'
        '📱'
        '🤡'
        '🥚'
        '🙈'
        '📸'
        '⚗️'
        '🔍️'
        '🏷️'
        '🌱'
        '🚩'
        '🥅'
        '💫'
        '🗑️'
        '🛂'
        '🩹'
        '🧐'
        '⚰️'
        '🧪'
        '👔'
        '🩺'
        '🧱'
        '🧑‍💻'
        '💸'
        '🧵'
        '🦺'
        'Lorem'
        'ipsum'
        'dolor'
        'sit'
        'amet'
        'consectetur'
        'adipiscing'
        'elit.'
        'Morbi'
        'euismod'
        'tellus'
        'mattis'
        'posuere'
        'feugiat.'
        'Proin'
        'id'
        'condimentum'
        'enim.'
        'Cras'
        'risus'
        'lacus'
        'condimentum'
        'sed'
        'lacus'
        'quis'
        'auctor'
        'porttitor'
        'mi.'
        'Etiam'
        'a'
        'sagittis'
        'ex'
        'finibus'
        'pretium'
        'quam.'
        'Praesent'
        'fringilla'
        'elit'
        'id'
        'dolor'
        'eleifend'
        'in'
        'posuere'
        'nunc'
        'mollis.'
        'Donec'
        'ultricies'
        'massa'
        'quis'
        'volutpat'
        'molestie.'
        'Donec'
        'id'
        'erat'
        'porttitor'
        'egestas'
        'metus'
        'ut'
        'sagittis'
        'tortor.'
        'Maecenas'
        'pharetra'
        'nisl'
        'eros'
        'sed'
        'euismod'
        'erat'
        'interdum'
        'cursus.Maecenas'
        'euismod'
        'nisi'
        'id'
        'risus'
        'mollis'
        'sollicitudin.'
        'Curabitur'
        'viverra'
        'dapibus'
        'porta.'
        'Praesent'
        'rhoncus'
        'facilisis'
        'ante'
        'sit'
        'amet'
        'molestie.'
        'Nulla'
        'non'
        'orci'
        'tincidunt'
        'auctor'
        'dui'
        'commodo'
        'pretium'
        'nisi.'
        'Sed'
        'at'
        'nisl'
        'aliquet'
        'interdum'
        'nulla'
        'sed'
        'sollicitudin'
        'nibh.'
        'Proin'
        'sed'
        'lacus'
        'id'
        'tellus'
        'efficitur'
        'facilisis'
        'at'
        'in'
        'dui.'
        'Quisque'
        'aliquam'
        'quis'
        'turpis'
        'placerat'
        'posuere.'
        'Morbi'
        'egestas'
        'feugiat'
        'libero'
        'ac'
        'faucibus.'
        'Suspendisse'
        'nisl'
        'magna'
        'malesuada'
        'ut'
        'varius'
        'nec'
        'varius'
        'quis'
        'neque.'
        'Praesent'
        'facilisis'
        'elit'
        'a'
        'accumsan'
        'suscipit'
        'massa'
        'augue'
        'aliquet'
        'diam'
        'ut'
        'rutrum'
        'ligula'
        'quam'
        'in'
        'arcu.'
        'Integer'
        'rhoncus'
        'suscipit'
        'justo'
        'ac'
        'accumsan'
        'ligula'
        'ultricies'
        'a.'
        'In'
        'id'
        'mauris'
        'purus.'
        'Lorem'
        'ipsum'
        'dolor'
        'sit'
        'amet'
        'consectetur'
        'adipiscing'
        'elit.'
        'Phasellus'
        'id'
        'eros'
        'viverra'
        'consequat'
        'odio'
        'in'
        'luctus'
        'nulla.'
        'Sed'
        'id'
        'elit'
        'lobortis'
        'tortor'
        'suscipit'
        'iaculis.'
        'In'
        'facilisis'
        'sit'
        'amet'
        'nisl'
        'eget'
        'posuere.Proin'
        'mollis'
        'vitae'
        'risus'
        'at'
        'pellentesque.'
        'Morbi'
        'auctor'
        'pulvinar'
        'molestie.'
        'Donec'
        'nulla'
        'mauris'
        'elementum'
        'sit'
        'amet'
        'porta'
        'quis'
        'ultrices'
        'vel'
        'nibh.'
        'In'
        'eget'
        'turpis'
        'et'
        'metus'
        'pellentesque'
        'pellentesque.'
        'Maecenas'
        'nec'
        'accumsan'
        'nisi.'
        'Aenean'
        'condimentum'
        'augue'
        'libero'
        'non'
        'aliquet'
        'augue'
        'euismod'
        'vitae.'
        'Aenean'
        'rutrum'
        'purus'
        'in'
        'risus'
        'lacinia'
        'sit'
        'amet'
        'sollicitudin'
        'purus'
        'interdum.'
        'In'
        'hac'
        'habitasse'
        'platea'
        'dictumst.'
        'Sed'
        'turpis'
        'dolor'
        'ornare'
        'et'
        'erat'
        'non'
        'pellentesque'
        'dapibus'
        'lectus.'
        'Mauris'
        'et'
        'arcu'
        'tincidunt'
        'efficitur'
        'magna'
        'varius'
        'pharetra'
        'sapien.'
        'Nulla'
        'ultrices'
        'turpis'
        'odio'
        'ut'
        'laoreet'
        'nulla'
        'porta'
        'commodo.Praesent'
        'fermentum'
        'justo'
        'dolor'
        'ac'
        'convallis'
        'lorem'
        'varius'
        'sit'
        'amet.'
        'Vivamus'
        'arcu'
        'ipsum'
        'ullamcorper'
        'nec'
        'imperdiet'
        'eget'
        'sodales'
        'eget'
        'ipsum.'
        'Praesent'
        'maximus'
        'gravida'
        'quam'
        'eu'
        'eleifend'
        'justo'
        'vulputate'
        'ut.'
        'Cras'
        'mollis'
        'gravida'
        'volutpat.'
        'Suspendisse'
        'mollis'
        'fermentum'
        'dolor'
        'ut'
        'finibus'
        'sapien'
        'pulvinar'
        'ac.'
        'Praesent'
        'laoreet'
        'dapibus'
        'tellus'
        'id'
        'vehicula'
        'urna'
        'blandit'
        'a.'
        'Vestibulum'
        'est'
        'quam'
        'ullamcorper'
        'vel'
        'tellus'
        'accumsan'
        'fringilla'
        'suscipit'
        'quam.'
        'Cras'
        'aliquam'
        'pulvinar'
        'erat'
        'ultrices'
        'gravida.'
        'Etiam'
        'congue'
        'urna'
        'fermentum'
        'augue'
        'suscipit'
        'feugiat.'
        'Phasellus'
        'posuere'
        'suscipit'
        'risus'
        'sit'
        'amet'
        'faucibus.'
        'Nulla'
        'at'
        'rutrum'
        'turpis'
        'eget'
        'pellentesque'
        'odio.'
        'Class'
        'aptent'
        'taciti'
        'sociosqu'
        'ad'
        'litora'
        'torquent'
        'per'
        'conubia'
        'nostra'
        'per'
        'inceptos'
        'himenaeos.'
        'Vestibulum'
        'eget'
        'quam'
        'risus.'
        'Mauris'
        'consectetur'
        'efficitur'
        'quam'
        'quis'
        'cursus.'
        'Quisque'
        'porttitor'
        'odio'
        'commodo'
        'lacinia'
        'orci'
        'nec'
        'rhoncus'
        'massa.'
        'Sed'
        'sit'
        'amet'
        'eros'
        'nulla.Fusce'
        'mattis'
        'pharetra'
        'mauris.'
        'Proin'
        'auctor'
        'sollicitudin'
        'sagittis.'
        'Donec'
        'volutpat'
        'dui'
        'nec'
        'vestibulum'
        'pharetra'
        'libero'
        'nulla'
        'condimentum'
        'neque'
        'eu'
        'dignissim'
        'ipsum'
        'arcu'
        'at'
        'lectus.'
        'Donec'
        'vitae'
        'interdum'
        'orci.'
        'Nulla'
        'facilisi.'
        'Proin'
        'iaculis'
        'felis'
        'et'
        'fringilla'
        'dictum.'
        'Aliquam'
        'varius'
        'magna'
        'a'
        'nunc'
        'fringilla'
        'eget'
        'consectetur'
        'augue'
        'blandit.'
        'Morbi'
        'non'
        'urna'
        'ac'
        'quam'
        'ultricies'
        'placerat.'
        'Vivamus'
        'aliquam'
        'neque'
        'eu'
        'ante'
        'porttitor'
        'sit'
        'amet'
        'malesuada'
        'nunc'
        'congue.'
        'Maecenas'
        'a'
        'hendrerit'
        'ligula.'
        'Fusce'
        'placerat'
        'euismod'
        'posuere.'
        'Mauris'
        'velit'
        'elit'
        'faucibus'
        'id'
        'arcu'
        'eu'
        'volutpat'
        'malesuada'
        'eros.'
        'Maecenas'
        'sit'
        'amet'
        'enim'
        'sapien.'
        'Proin'
        'vestibulum'
        'consectetur'
        'erat'
        'at'
        'eleifend.'
    )
    clear
    while :; do
        limited_random=$(($RANDOM % 30))
        if [[ $limited_random > 10 ]]; then
            sleep $(($RANDOM % 2))
        fi
        for i in $(seq $limited_random); do
            echo_rand_color_no_line_break "${words[$RANDOM % ${#words[@]}]}"
        done
        if [[ ! -z $1 ]]; then
            echo
        fi
    done
}