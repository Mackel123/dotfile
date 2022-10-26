URL="https://www.reddit.com/message/unread/.json?feed=a697ee5c713a505b668aa8ed15de1b52e7da8566&user=That-Needleworker-11"
USERAGENT="polybar-scripts/notification-reddit:v1.0 u/That-Needleworker-11"

notifications=$( curl -x "127.0.0.1:7890" -sf --user-agent "$USERAGENT" "$URL" | jq '.["data"]["children"] | length' )

if [ -n "$notifications" ] && [ "$notifications" -gt 0 ]; then
        echo "#1 $notifications"
    else
            echo "#2"
fi
