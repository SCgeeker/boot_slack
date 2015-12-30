# send the text message to slack channel
url = 'https://hooks.slack.com/services/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'
httr::POST(url,
           body = list(
                   channel =  "#general", 
                   text="LCP Lab slack channels are on line"), # write the message after text=
           encode = "json")


# Use bots to send the output of R functions
slackr_setup(channel = "#r",
             api_token = 'xoxb-17518627078-05YSwsAjCsDuSnUm4aRDqKbb',
             icon_emoji = ":thumbsup:", username = "r_bot")

slackr('The results for R are finished')
slackr(str(iris))

# Use my identity to send the output of R functions
slackr_setup(channel = "#r",
        api_token = "xoxp-17509149313-17509149345-17545537750-6b64f97e94",
        icon_emoji = ":thumbsup:", username = "csc" 
)
