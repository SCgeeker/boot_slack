if(!require(slackr)){
        if(!require(devtools)){install.packages("devtools")}
        devtools::install_github("hrbrmstr/slackr")
}

library(slackr)

# After you join a team, get the api token at https://api.slack.com/web#authentication

mytoken = readLines("../csc_api_token.txt", warn = FALSE) # put my toekn at the up directory for sacurity

# Use my identity to send the output of R functions
slackr_setup(channel = "#r",
        api_token = mytoken,
        icon_emoji = ":thumbsup:", username = "csc" 
)
