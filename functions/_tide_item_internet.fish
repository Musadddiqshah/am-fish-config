function _tide_item_internet
    set -l icon ''
    set -l color D70000

    if curl -fsS --connect-timeout 1 --max-time 2 \
        https://connectivitycheck.gstatic.com/generate_204 \
        -o /dev/null 2>/dev/null
        set color 5FAF00
    end

    set -g tide_internet_icon $icon
    set -g tide_internet_color $color

    _tide_print_item internet " $icon " ''
end
