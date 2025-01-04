

- Pour voir le script en entier 
[text](https://www.leblogduwis.com/powershell-ranger-votre-bureau/)

- Voici un extrait du script PowerShell pour ranger votre bureau : créé par le blogduwis.com (Wisy) et  source u/zazierx sur Reddit. 
```powershell
$pathToUse = "C:\Users\$env:username\Desktop"
$video = @(
'3g2','3gp','3gpp','asf','avi','divx','f4v',
'flv','h264','ifo','m2ts','m4v','mkv','mod','mov',
'mp4','mpeg','mpg','mswmm','mts','mxf','ogv','rm',
'srt','swf','ts','vep','vob','webm','wlmp','wmv'
)
......
$files = Get-ChildItem -Path $pathToUse
Foreach ($x in $files){
if($docs.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "Documents" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Documents"
........
}
}
```
