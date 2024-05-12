git filter-branch --env-filter `
{
    if ($env:GIT_COMMIT -eq "f0c2e59548c33bae54b96d419501da0f39116b5d") {
        $env:GIT_AUTHOR_DATE = "Sun May 12 21:38:53 2024 -0800"
        $env:GIT_COMMITTER_DATE = "Sun May 12 01:01:01 2024 -0700"
    }
} `
--tag-name-filter cat -- --branches --tags
 