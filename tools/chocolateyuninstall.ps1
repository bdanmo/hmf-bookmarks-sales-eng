# Define the paths to the Chrome and Edge bookmarks files
$chromeBookmarks = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Bookmarks"
$edgeBookmarks = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Bookmarks"

#define path to bookmarks file in temp folder
$bookmarksTemp = "C:\ProgramData\ChocoTemp\Bookmarks"

#remove bookmark file from temp folder, if it exists
if (Test-Path -Path $bookmarksTemp) {
    Write-Output "Removing $bookmarksTemp"
    Remove-Item -Path $bookmarksTemp
}

#remove "sales+eng_bookmarks.html" from public desktop, if it exists
if (Test-Path -Path "C:\Users\Public\Desktop\Bookmarks.html") {
    Write-Output "Removing C:\Users\Public\Desktop\Bookmarks.html"
    Remove-Item -Path "C:\Users\Public\Desktop\Bookmarks.html"
}



