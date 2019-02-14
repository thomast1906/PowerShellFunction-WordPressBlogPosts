Function Get-Blogs {

  Param(
  [string]$BlogSiteName
  )


$WPBlogRetrieve = Invoke-RestMethod -uri "https://public-api.wordpress.com/rest/v1/sites/$BlogSiteName/posts/?number=100"
$WPBlogRetrieve.posts | Select-Object @{"Name" = "Title";"e"= {$_.Title}},
                             @{"Name" = "URL";"e"= {$_.URL}},
                             @{"Name" = "Date"; "Expression" = {get-date ($_.Date) -Format "dd-MMM-yyyy"}} | ft 
}

#Get-Blogs Example
#Get-Blogs -BlogSiteName "thomasthornton.cloud"