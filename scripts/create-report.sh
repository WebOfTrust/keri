#!/bin/bash
set -e

days=${DAYS_AGO:-8} # default to 8
date=$(date --date="$days days ago" +"%Y-%m-%d")

repo_owner=${REPO_OWNER:?"REPO_OWNER not set"}
repo_name=${REPO_NAME:?"REPO_NAME not set"}
category_slug=${CATEGORY_SLUG:?"CATEGORY_SLUG not set"}

repos=(
    "WebOfTrust/keripy"
    "WebOfTrust/keria"
    "WebOfTrust/signify-ts"
    "WebOfTrust/signifypy"
    "WebOfTrust/cesride"
    "WebOfTrust/kerific"
    "WebOfTrust/kerisse"
    "WebOfTrust/keridoc"
    "WebOfTrust/signify-browser-extension"
    "WebOfTrust/polaris-web"
)

function create_report {
    for p in "${repos[@]}"
    do
        issues=$(gh issue list --json url,title --repo "${p}" --search "created:>=$date sort:created-asc is:open" --template \
            '{{range .}}{{"- "}}{{.url}}{{"\n"}}{{end}}')

        open_prs=$(gh pr list --json url,title --repo "${p}" --search "created:>=$date sort:created-asc is:open" --template \
            '{{range .}}{{"- "}}{{.url}}{{"\n"}}{{end}}')

        merged_prs=$(gh pr list --json url,title --repo "${p}" --search "merged:>=$date sort:created-asc is:merged" --template \
            '{{range .}}{{"- "}}{{.url}}{{"\n"}}{{end}}')

        echo "# Repository ${p}"
        echo ""
        echo "## Issues created after $date"
        echo ""


        if [ -z "$issues" ]; then
            echo "No issues found"
        else
            echo "$issues"
        fi

        echo ""
        echo "## Pull requests opened after $date"
        echo ""

        if [ -z "$open_prs" ]; then
            echo "No pull requests found"
        else    
            echo "$open_prs"
        fi

        echo ""
        echo "## Pull requests merged after $date"
        echo ""

        if [ -z "$merged_prs" ]; then
            echo "No pull requests found"
        else    
            echo "$merged_prs"
        fi

        echo ""
    done
}


function create_discussion {
    title=$1
    body=$2

    repo_id=$(gh api graphql -q '.data.repository.id' -F owner="$repo_owner" -F name="$repo_name" -f query='query
        FindRepository($owner:String!, $name: String!)
        {
            repository(owner:$owner, name:$name) {
                id
            }
        }
    ')

    category_id=$(gh api graphql -q '.data.repository.discussionCategory.id' -F owner="$repo_owner" -F name="$repo_name" -F category="$category_slug" -f query='query
        FindCategory($owner:String!, $name:String!, $category: String!)
        {
            repository(owner:$owner, name:$name) {
                discussionCategory(slug:$category) {
                    id
                }
            }
        }
    ')

    gh api graphql -F repoId="$repo_id" -F categoryId="$category_id" -F body="$body" -F title="$title" -f query='
        mutation CreateDiscussion($repoId:ID!, $categoryId:ID!, $body:String!, $title:String!) {
            createDiscussion(input: {repositoryId: $repoId, categoryId: $categoryId, body: $body, title: $title}) {
                discussion {
                    id
                }
            }
        }
    '
}

if [ "${DRY_RUN}" = "true" ]; then
    create_report
else
    create_discussion "Issues and PR summary $(date +%Y-%m-%d)" "$(create_report)"
fi
