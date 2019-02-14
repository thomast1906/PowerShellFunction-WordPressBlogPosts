# PowerShell Function - WordPress.com retrieve blog data using API

A quick PowerShell Function to retrieve blog post data from my blog site - added to Github as may be useful for others!

Run this function easily by:

```powershell
Get-Blogs -BlogSiteName "thomasthornton.cloud"
```
Output:
![alt text](https://github.com/thomast1906/PowerShellFunction-WordPressBlogPosts/blob/master/Images/Output-Example.jpg)

If you require further Output data from the used api, you can run 
```powershell
$WPBlogRetrieve = Invoke-RestMethod -uri "https://public-api.wordpress.com/rest/v1/sites/$BlogSiteName/posts/?number=100"
$WPBlogRetrieve.posts
```

[Further info on WordPress.com API](https://developer.wordpress.com/docs/api/)